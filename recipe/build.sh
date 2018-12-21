#!/usr/bin/env bash

# Turn the work-folder into GOPATH
pushd src/github.com/hashicorp/$PKG_NAME

# Build
make fmt

# This is a misnomer, it will still build the distro
make dev

# Install Binary into PREFIX/bin
mkdir -p $PREFIX/bin
mv $GOPATH/bin/$PKG_NAME $PREFIX/bin/$PKG_NAME
