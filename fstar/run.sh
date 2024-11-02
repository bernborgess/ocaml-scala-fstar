#!/bin/bash


#fstar.exe --codegen OCaml --extract Hello --odir build Hello.fst
#cd build
#ocamlfind ocamlc -thread -o hello -package threads Hello.ml

#FSTAR_HOME=$(opam var fstar:lib)
#OCAMLPATH=$FSTAR_HOME/lib ocamlbuild -use-ocamlfind -pkg batteries -pkg fstar.lib Hello.cmxa


fstar.exe Hello.fst --codegen OCaml --odir build --extract_module Hello
cd build
OCAMLPATH=~/.opam/default/lib/fstar/ ocamlfind opt -thread -package fstar.lib -package threads -linkpkg Hello.ml -o Hello
./Hello
