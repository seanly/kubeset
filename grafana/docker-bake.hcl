group "default" {
  targets = ["grafana-arm64", "grafana-amd64"]
}

target "grafana-arm64" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "grafana"
        "cloud.opsbox.image.version" = "9.5.1"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="9.5.1"
    }
    platforms = ["linux/arm64"]
    tags = ["registry.cn-hangzhou.aliyuncs.com/seanly/kubeset:grafana-9.5.1-2-arm64"]
    output = ["type=image,push=true"]
}


target "grafana-amd64" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "grafana"
        "cloud.opsbox.image.version" = "9.5.1"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="9.5.1"
    }
    platforms = ["linux/amd64"]
    tags = ["registry.cn-hangzhou.aliyuncs.com/seanly/kubeset:grafana-9.5.1-2-amd64"]
    output = ["type=image,push=true"]
}