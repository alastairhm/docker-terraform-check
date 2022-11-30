#!/bin/bash
cd "$TEST_DIR" || exit
pwd
ls -l
tfsec --config-file /home/security/config/.tfsec.yml
tflint --config /home/security/config/.tflint.hcl ./

