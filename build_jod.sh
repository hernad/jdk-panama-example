#!/bin/bash


#ls -lh input_jars/
#total 1.4M
#-rw-rw-r--. 1 hernad hernad 1.4M Feb 13 21:24 jodreports-2.4.1-with-dependencies.jar


jpackage --input input_jars --main-jar jodreports-2.4.1-with-dependencies.jar --main-class net.sf.jodreports.cli.CreateDocument --runtime-image jhello_image -n jod


#sudo rpm -Uvh jod-1.0-1.x86_64.rpm


#[hernad@xps-9570-out-ba example]$ /opt/jod/bin/jod
#USAGE: net.sf.jodreports.cli.CreateDocument <template-document> <data-file> <output-document>


#ls -lh jod-1.0-1.x86_64.rpm 
#-rw-rw-r--. 1 hernad hernad 21M Feb 13 21:39 jod-1.0-1.x86_64.rpm

