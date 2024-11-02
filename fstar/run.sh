#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Store the provided filename
FILENAME=$1

# Check if the file with the given name exists
if [ ! -f "${FILENAME}.fst" ]; then
  echo "Error: File '${FILENAME}.fst' not found."
  exit 1
fi

# Run fstar with the provided filename
fstar.exe "${FILENAME}.fst" --codegen OCaml --odir build --extract_module "${FILENAME}"

# Check if fstar.exe succeeded
if [ $? -ne 0 ]; then
  echo "Error: fstar.exe failed to execute successfully."
  exit 1
fi

cd build

# Compile the OCaml code
OCAMLPATH=~/.opam/default/lib/fstar/ ocamlfind opt -thread -package fstar.lib -package threads -linkpkg "${FILENAME}.ml" -o "${FILENAME}"

# Execute the compiled program
./"${FILENAME}"

