#!/usr/bin/env bash

script_dir=$(realpath $(dirname $0))
cql_dir=$(realpath $script_dir/../cql)

echo "Use $cql_dir as a CQL directory."

docker run \
  -it \
  --network my-cassandra-net \
  -v $cql_dir:/cql \
  --rm \
  cassandra:3.11.4 \
  cqlsh my-cassandra
