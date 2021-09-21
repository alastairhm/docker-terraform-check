#!/bin/bash
echo "Finding latest versions..."
tfsec_ver=$(curl -s  https://github.com/aquasecurity/tfsec/releases/ |grep "aquasecurity/tfsec/releases/tag" | awk 'NR<2 { split($0,a,">|<"); print a[3] }')
tflint_ver=$(curl -s https://github.com/terraform-linters/tflint/releases | grep "/terraform-linters/tflint/releases/tag"|awk 'NR<2 { split($0,a,">|<"); print a[3] }')
echo "Build with TFSec ${tfsec_ver} and TFLint ${tflint_ver}."
docker build --build-arg TFSEC_VER=$tfsec_ver --build-arg TFLINT_VER=$tflint_ver -t docker-terraform-check:latest .
