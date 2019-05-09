#!/usr/bin/env bash
set -ex

dmd -O -inline -release -run memcpyd.d avg | tee data.txt-dmd-release-o

ldc2 -Oz -release -run memcpyd.d avg | tee data.txt-ldc2-release-o3

./plot.d data.txt-dmd-release-o data.txt-ldc2-release-o3 
