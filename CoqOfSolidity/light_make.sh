#!/bin/sh

# The light version of a Makefile for testing, as `coqdep` takes several minutes to run on the
# whole project.

# Display the commands being run.
set -x

coqc -R . CoqOfSolidity -impredicative-set CoqOfSolidity.v
coqc -R . CoqOfSolidity -impredicative-set test/libsolidity/semanticTests/various/erc20/ERC20.v
coqc -R . CoqOfSolidity -impredicative-set test/libsolidity/semanticTests/c99_scoping_activation/test.v

for v_file in test/libsolidity/semanticTests/abiencodedecode/*/*.v; do
  coqc -R . CoqOfSolidity -impredicative-set $v_file
done

coqc -R . CoqOfSolidity -impredicative-set simulations/CoqOfSolidity.v
