#!/usr/bin/env bash

docker run --rm -i -t \
  -p 3592:3592 -p 3593:3593 \
  -v /tmp -v /.cache \
  -e CERBOS_CLOUD_BUNDLE="latest" \
  -e CERBOS_CLOUD_SECRET_KEY="CERBOS-1G8HE6FLTFV5H-85EHC9DWLM4ESATXJHMYVWYKF5XZC3NUZZK2XYPV96Y4QRKFYPSSJUY08S" \
  -e CERBOS_CLOUD_CLIENT_ID="OGZPOUG2UUUG" \
  -e CERBOS_CLOUD_CLIENT_SECRET="cerbos_DqzrTWsp136dI07G86vb01zRHaxP/P4KINOLm5snQK8" \
  -e CERBOS_NO_TELEMETRY=1 \
  ghcr.io/cerbos/cerbos:0.28.0 server --set=server.logRequestPayloads=true
