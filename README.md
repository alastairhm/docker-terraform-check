# docker-terraform-check

Alpine based Docker image with TFSec and TFLint setup to run on passed volume.

## Building

```bash
docker build -t docker-terraform-check:latest .

```

```bash
docker build --build-arg TFSEC_VER=v0.58.9 --build-arg TFLINT_VER=v0.32.1 -t docker-terraform-check:latest .
```

## Running

Switch to terraform directory you wish to check, then run

```bash
docker run --rm -it -v $PWD:/home/security/workdir ghcr.io/alastairhm/docker-terraform-check:latest
```