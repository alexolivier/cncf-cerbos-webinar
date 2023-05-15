#!/usr/bin/env bash

docker run --rm --name cerbos \
  -p 3592:3592 -p 3593:3593 \
  -v /tmp -v /.cache \
  -e CERBOS_CLOUD_BUNDLE="latest" \
  -e CERBOS_CLOUD_SECRET_KEY="CERBOS-1G8HE6FLTFV5H-8NDRPCX8W94JAHEQDPCMKXXQS8SSS9CYWEQ9KPFHAQQ6AP48SGMQ49TGDZ" \
  -e CERBOS_CLOUD_CLIENT_ID="WRM3YUQKUA1L" \
  -e CERBOS_CLOUD_CLIENT_SECRET="cerbos_q0PTJxEK8ImNkBf0olS+07OUyARhdDLGjqUftaYIbMI" \
  ghcr.io/cerbos/cerbos:0.26.0 server