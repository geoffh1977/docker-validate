# Code Validation Container #

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/geoffh1977/validate.svg?style=plastic)
![GitHub](https://img.shields.io/github/license/geoffh1977/docker-validate.svg?style=plastic)

## Description ##
Adds tooling to a container which can be used with validate code. Current tools:
* Hadolint - Validate Dockerfiles
* YAML Lint - Validate Yaml Files
* CFN Lint - Validate Cloudformation Files
* CFN Nag - Scan Cloudformation For Security Issues
* Shell Check - Validates Shell Files

## Building The Code Validation Container ##
After cloning the repository, simply execute the _make build_ command while in the repository root path to execute a docker build of the current Dockerfile. The Makefile contains a number of useful commands which perform different actions.

### Getting In Contact ###
If you find any issues with this container or want to recommend some improvements, fell free to get in contact with me or submit pull requests on github.
