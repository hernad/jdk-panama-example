#!/bin/bash

set -o xtrace

echo build libhelloworld.so

cat helloworld.h

cat helloworld.c

gcc -fPIC -shared helloworld.c -o libhelloworld.so

jextract -t ba.out.hello -L . -l helloworld helloworld.h -o libhelloworld.jar

cat helloworld.java

javac -cp libhelloworld.jar HelloWorld.java

java -cp libhelloworld.jar:. HelloWorld
