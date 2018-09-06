BASE_DIR=$(cd `dirname $0`; pwd)

kubectl apply -f ns.yaml && kubectl create secret generic ceph-admin-secret --from-file=/tmp/secret --namespace=cephfs && kubectl apply -f $BASE_DIR