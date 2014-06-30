all: build run

build:
	cabal build

run:
	./dist/build/dcard/dcard
