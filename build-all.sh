#!/bin/bash

# should be the planx root folder
baseDir=${PWD%/*}

echo $baseDir

echo "Build all PlanX functionalities"

cd ${baseDir}/solving-service-pddl4j/
./build.sh

cd ${baseDir}/solving-service-pd/
./build.sh

cd ${baseDir}/parsing-service/
./build.sh

cd ${baseDir}/modelling-service/
./build.sh

cd ${baseDir}/converting-service/
./build.sh

cd ${baseDir}/managing-service/
./build.sh

cd ${baseDir}/plan-validation-service/
./build.sh

echo "All services are build!"
echo "run 'docker-compose up' to start-up the system"
