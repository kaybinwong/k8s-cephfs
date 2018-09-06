BASE_DIR=$(cd `dirname $0`; pwd)
cd $BASE_DIR
kubectl apply -f .
