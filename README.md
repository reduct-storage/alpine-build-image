# Build Images For ReductStore CI

This repository contains the Dockerfiles for the images used in the CI of ReductStore.
Both images fetch conanfile.txt from the ReductStore repository and build conan dependencies.

### alpine.Dockerfile

* CI image based on Alpine Linux 3.16
* Debug and Release builds
* Repository: ghcr.io/reductstore/build_image:alpine

### ubuntu.Dockerfile

* Deploy image based on Ubuntu 20.04
* Release build
* Repository: ghcr.io/reductstore/build_image:ubuntu