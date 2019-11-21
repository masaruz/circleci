#!/bin/bash

circleci config pack ./src > ./config.yml
circleci orb validate ./config.yml 