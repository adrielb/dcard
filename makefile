all: build run

build:
	cabal build

run:
	./dist/build/dcard/dcard

deps:
	cabal install --only-dependencies

munkres:
	cabal get Munkres
