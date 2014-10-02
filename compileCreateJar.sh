#!/bin/bash

if [ ! -f bin/ ]; then
	echo "Creating bin folder"
	mkdir bin
fi

cd src/

javac -d ../bin/ contador/*.java

cd ../bin

jar -cfm Contador.jar MANIFEST.MF contador/*

cd ..

if [ -e bin/Contador.jar ]; then
	mv bin/Contador.jar .
	echo "Done"
else
	echo "Error.."
fi