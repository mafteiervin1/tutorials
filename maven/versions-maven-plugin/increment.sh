#!/bin/bash

echo PROJECT_VERSION=`mvn help:evaluate -Dexpression=project.version -q -DforceStdout`
#$PROJECT_VERSION=$PROJECT_VERSION+1
#mvn release:update-versions -DautoVersionSubmodules=true

mvn release:prepare -DpushChanges=false

echo PROJECT_VERSION=`mvn help:evaluate -Dexpression=project.version -q -DforceStdout`

#echo $PROJECT_VERSION