#!/bin/bash
set -euxo pipefail
image=leoschwarz/bench_snakemake_trie:latest
docker build -t $image .
mkdir -p tmp-data
mkdir -p result
docker run --rm \
  --mount type=bind,source=$(pwd)/tmp-data,target=/benchmark/data \
  --mount type=bind,source=$(pwd)/result,target=/benchmark/result \
  $image
