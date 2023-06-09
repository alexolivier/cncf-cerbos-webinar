#!/usr/bin/env bash

LATEST_VERSION=$(curl --silent "https://api.github.com/repos/cerbos/cerbos/releases/latest" | jq -r .tag_name)

docker run -i -t -p 3592:3592 -p 3593:3593 -e CERBOS_NO_TELEMETRY=1 \
  -v $(pwd)/policies:/policies \
  -v $(pwd)/config.yaml:/config.yaml \
  ghcr.io/cerbos/cerbos:"${LATEST_VERSION:1}" compile /policies
