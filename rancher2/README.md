# helm

## download

```bash
curl https://releases.rancher.com/server-charts/stable/index.yaml > helm.yaml

RANCHER_HEML_URL=https://releases.rancher.com/server-charts/stable/rancher-2.7.10.tgz
curl -sLfO ${RANCHER_HEML_URL}

```

## install


```bash

helm upgrade --install oes-rancher2 ./rancher-2.7.10.tgz --namespace=oes-rancher2 --create-namespace -f ./values.yaml
```