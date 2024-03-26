variable "VERSION" {
  default = "9.5.1"
}

variable "FIXID" {
  default = "2"
}


group "default" {
  targets = ["grafana"]
}

group "acr" {
  targets = ["grafana-amd64", "grafana-arm64"]
}

target "grafana" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "grafana"
        "cloud.opsbox.image.version" = "${VERSION}"
        "cloud.opsbox.image.fixid" = "${FIXID}"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="${VERSION}"
    }
    platforms = ["linux/amd64", "linux/arm64"]
    tags = ["seanly/kubeset:grafana-${VERSION}-${FIXID}"]
    output = ["type=image,push=true"]
}

target "grafana-arm64" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "grafana"
        "cloud.opsbox.image.version" = "${VERSION}"
        "cloud.opsbox.image.fixid" = "${FIXID}"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="${VERSION}"
    }
    platforms = ["linux/arm64"]
    tags = [
        "registry.cn-chengdu.aliyuncs.com/seanly/kubeset:grafana-${VERSION}-${FIXID}-arm64",
        "registry.cn-hangzhou.aliyuncs.com/seanly/kubeset:grafana-${VERSION}-${FIXID}-arm64"
    ]
    output = ["type=image,push=true"]
}

target "grafana-amd64" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "grafana"
        "cloud.opsbox.image.version" = "${VERSION}"
        "cloud.opsbox.image.fixid" = "${FIXID}"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="${VERSION}"
    }
    platforms = ["linux/amd64"]
    tags = [
        "registry.cn-chengdu.aliyuncs.com/seanly/kubeset:grafana-${VERSION}-${FIXID}",
        "registry.cn-hangzhou.aliyuncs.com/seanly/kubeset:grafana-${VERSION}-${FIXID}"
    ]
    output = ["type=image,push=true"]
}
