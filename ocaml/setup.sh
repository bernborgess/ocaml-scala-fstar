#!/bin/bash

# Install the opam package manager
bash -c "sh <(curl -fsSL https://opam.ocaml.org/install.sh)"
# Initialise opam
opam init
# Activate the opam switch
eval $(opam env)
# Set Up an OCaml Development Environment
opam install ocaml-lsp-server odoc ocamlformat utop
# Bootstrapping a Project with Dune
cd ..
opam exec -- dune init project ocaml
