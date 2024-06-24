#!/bin/sh

# The light version of a Makefile for testing, as `coqdep` takes several minutes to run on the
# whole project.

# Display the commands being run.
set -x

coqc -R . CoqOfSolidity -impredicative-set CoqOfSolidity.v
coqc -R . CoqOfSolidity -impredicative-set test/libsolidity/semanticTests/constructor/bytes_in_constructors_unpacker/Test.v
coqc -R . CoqOfSolidity -impredicative-set simulations/CoqOfSolidity.v
coqc -R . CoqOfSolidity -impredicative-set test/libsolidity/semanticTests/constructor/bytes_in_constructors_unpacker/GeneratedTest.v
