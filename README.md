# docker-terraform-check

Alpine based Docker image with TFSec and TFLint setup to run on passed volume.

## Building

Build with defaults.

```bash
docker build -t docker-terraform-check:latest .
```

Specify versions.

```bash
docker build --build-arg TFSEC_VER=v0.58.9 --build-arg TFLINT_VER=v0.32.1 -t docker-terraform-check:latest .
```

Build with latest versions.

```bash
./build.sh
```

## Running

Switch to terraform directory you wish to check, then run

```bash
docker run --rm -it -v $PWD:/home/security/workdir ghcr.io/alastairhm/docker-terraform-check:latest
```

```text
          _    _ __  __ 
    /\   | |  | |  \/  | Email   : alastair@montgomery.me.uk
   /  \  | |__| | \  / | Web     : https://blog.0x32.co.uk/
  / /\ \ |  __  | |\/| | Twitter : @alastair_hm
 / ____ \| |  | | |  | |
/_/    \_\_|  |_|_|  |_| (c) 2021
```
