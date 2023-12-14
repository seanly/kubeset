# installer

```bash
k apply -f ./prometheus-pv.yaml
helm upgrade --install monitoring ./kube-prometheus-stack-18.0.6.tgz   --namespace=monitoring --create-namespace -f monitoring-values.yaml
```

# Prometheus Operator

https://prometheus-operator.dev/docs/user-guides/getting-started/



# kube-prometheus-stack

https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/README.md