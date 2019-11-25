#!/bin/bash

pack:
	circleci config pack ./src > ./config.yml
	circleci orb validate ./config.yml 

publish:
	circleci orb publish ./config.yml ${VERSION}