#!/bin/bash
cd "$TEST_DIR" || exit
pwd
ls -l
tfsec
tflint --config /home/security/config/.tflint.hcl ./

