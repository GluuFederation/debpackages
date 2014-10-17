#!/bin/sh
# Please run it with JDK 1.6 or higher

BASEDIR=$(dirname $0)
echo BASEDIR=$BASEDIR
CONF=$BASEDIR/../conf/configuration.json
LOG4JCONF=$BASEDIR/../conf/log4j.xml
echo CONF=$CONF
echo LOG4JCONF=$LOG4JCONF
LIB=$BASEDIR/../lib
javaExe=java

$javaExe -Doxd.server.config=$CONF -Dlog4j.configuration=$LOG4JCONF -cp $LIB/bcprov-jdk16-1.46.jar:$LIB/resteasy-jaxrs-2.3.4.Final.jar:$LIB/oxd-server-jar-with-dependencies.jar org.xdi.oxd.server.ServerLauncher &

echo $! > /opt/oxd-server/pid
sleep 5
