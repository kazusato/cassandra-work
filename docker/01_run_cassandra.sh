#!/usr/bin/env bash

docker run \
  --name my-cassandra \
  --network my-cassandra-net \
  -p 9042:9042 \
  -d \
  cassandra:3.11.4
