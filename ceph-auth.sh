#!/bin/bash

function createSecret(){
cat > secret.yaml << EOF
---
apiVersion: v1
data:
  secret: $SECRECT
kind: Secret
metadata:
  name: ceph-admin-secret
  namespace: cephfs
type: Opaque
EOF
}

BASE_DIR=$(cd `dirname $0`; pwd)
cd $BASE_DIR
ceph auth caps client.k8s mon 'allow rwx' osd 'allow rw pool=k8s' mds 'allow rwp' && ceph auth get-key client.k8s > /tmp/secret
SECRECT=$(cat /tmp/secret | base64)
createSecret