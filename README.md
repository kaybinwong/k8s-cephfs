cephfs provisioner, not rbd.

# 1. 准备
确保已经安装ceph集群(http://www.mamicode.com/info-detail-2355156.html)以及k8s集群。

# 2. ceph授权

```
sh ceph-auth.sh
```
此操作会生成一个ceph的账号k8s，如若需要修改不，请同时修改`sc.yaml`。

# 3. 配置sc.yaml
配置上述生成的ceph账号信息以及ceph的monitor地址

# 4. 创建k8s对象
```
sh k8s-apply.sh
```
创建完毕，可以查看pvc的情况`kubectl get pvc`

# 5. 销毁
```
kubectl delete -f .
```
> 有必要的话也删除ceph auth.