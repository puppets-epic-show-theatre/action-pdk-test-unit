#! /usr/bin/env bash

set -x

mkdir -p junit-tests/

pdk test unit --format=text
