cephfs provisioner, not rbd.

# 1. ׼��
ȷ���Ѿ���װceph��Ⱥ(http://www.mamicode.com/info-detail-2355156.html)�Լ�k8s��Ⱥ��

# 2. ceph��Ȩ

```
sh ceph-auth.sh
```
�˲���������һ��ceph���˺�k8s��������Ҫ�޸Ĳ�����ͬʱ�޸�`sc.yaml`��

# 3. ����sc.yaml
�����������ɵ�ceph�˺���Ϣ�Լ�ceph��monitor��ַ

# 4. ����k8s����
```
sh k8s-apply.sh
```
������ϣ����Բ鿴pvc�����`kubectl get pvc`

# 5. ����
```
kubectl delete -f .
```
> �б�Ҫ�Ļ�Ҳɾ��ceph auth.