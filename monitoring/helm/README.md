# installer

```bash
k apply -f ./prometheus-pv.yaml
helm upgrade --install monitoring ./kube-prometheus-stack-18.0.6.tgz   --namespace=monitoring --create-namespace -f monitoring-values.yaml
```
