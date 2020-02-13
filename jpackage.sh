#!/bin/bash

set -o xtrace


echo create jmod ba.out.hello


javac ba/out/hello/HelloWorld.java


jextract -t ba.out.hello -L . -l helloworld helloworld.h -o ba.out.hello.jmod


#jmod extract ba.out.hello.jmod --dir hello_jmod
#cd hello_jmod
#jmod create --class-path classes --libs lib  ba.out.hello.jmod
#mv ba.out.hello.jmod ..
#cd ..


echo create HelloWorld.jar
#jar cmf HelloWorld.mf HelloWorld.jar  ba/out/hello/*.class

java -Djava.library.path=.  -jar HelloWorld.jar


echo jlink jhello_image
jlink --add-modules jdk.compiler,ba.out.hello --module-path . --output jhello_image



#jpackage -n jhello --runtime-image jhello_image --main-jar HelloWorld.jar --main-class ba.out.hello.HelloWorld

jpackage --runtime-image jhello_image  -n jhello --module ba.out.hello/ba.out.hello.HelloWorld


