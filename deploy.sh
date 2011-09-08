#!/bin/bash -ex
v=1.8.2-jenkins-1
exec mvn deploy:deploy-file -DpomFile=target/groovy-all.pom -Dfile=target/dist/groovy-all-$v.jar -Dsources=dist/groovy-all-$v-sources.jar -DrepositoryId=maven.jenkins-ci.org -Durl=http://maven.jenkins-ci.org:8081/content/repositories/releases
