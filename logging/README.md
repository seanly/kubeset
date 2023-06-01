# install

```bash
k apply -f ./loki-pv.yaml
helm upgrade --install logging ./loki-stack-2.6.5.tgz  --namespace=logging --create-namespace -f loki-values.yaml

```
