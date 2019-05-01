# Code Validation Container Build #

Adds tooling to a container which can be used with validate code. Current tools:
* Hadolint - Validate Dockerfiles
* YAML Lint - Validate Yaml Files
* CFN Lint - Validate Cloudformation Files
* CFN Nag - Scan Cloudformation For Security Issues
* Shell Check - Validates Shell Files

Other information:
* The Container configuration variables are stored in the container.conf for easy editing
* A Makefile has been provided to simplify the build process.