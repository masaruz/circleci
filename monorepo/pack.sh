#!/bin/bash

DIR=monorepo
PWD=$(cd $(dirname "$1") && pwd -P)/$(basename "$1")

echo "Start generate script from $PWD$DIR"

circleci config pack $PWD$DIR/src > $PWD$DIR/config.yml
circleci orb validate $PWD$DIR/config.yml 