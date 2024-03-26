variable "VERSION" {
  default = "2.7.5"
}

variable "FIXID" {
  default = "1"
}

group "default" {
  targets = ["promtail", "loki"]
}

group "acr" {
  targets = ["promtail-amd64", "promtail-arm64", "loki-amd64", "loki-arm64"]
}

target "promtail" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "promtail"
        "cloud.opsbox.image.version" = "${VERSION}"
        "cloud.opsbox.image.fixid" = "${FIXID}"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="${VERSION}"
    }
    target = "promtail"
    platforms = ["linux/amd64", "linux/arm64"]
    tags = ["seanly/kubeset:promtail-${VERSION}-${FIXID}"]
    output = ["type=image,push=true"]
}

target "promtail-arm64" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "promtail"
        "cloud.opsbox.image.version" = "${VERSION}"
        "cloud.opsbox.image.fixid" = "${FIXID}"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="${VERSION}"
    }
    target = "promtail"
    platforms = ["linux/arm64"]
    tags = [
        "registry.cn-chengdu.aliyuncs.com/seanly/kubeset:promtail-${VERSION}-${FIXID}-arm64",
        "registry.cn-hangzhou.aliyuncs.com/seanly/kubeset:promtail-${VERSION}-${FIXID}-arm64"
    ]
    output = ["type=image,push=true"]
}

target "promtail-amd64" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "promtail"
        "cloud.opsbox.image.version" = "${VERSION}"
        "cloud.opsbox.image.fixid" = "${FIXID}"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="${VERSION}"
    }
    target = "promtail"
    platforms = ["linux/amd64"]
    tags = [
        "registry.cn-chengdu.aliyuncs.com/seanly/kubeset:promtail-${VERSION}-${FIXID}",
        "registry.cn-hangzhou.aliyuncs.com/seanly/kubeset:promtail-${VERSION}-${FIXID}"
    ]
    output = ["type=image,push=true"]
}

target "loki" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "loki"
        "cloud.opsbox.image.version" = "${VERSION}"
        "cloud.opsbox.image.fixid" = "${FIXID}"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="${VERSION}"
    }
    target = "loki"
    platforms = ["linux/amd64", "linux/arm64"]
    tags = ["seanly/kubeset:loki-${VERSION}-${FIXID}"]
    output = ["type=image,push=true"]
}

target "loki-arm64" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "loki"
        "cloud.opsbox.image.version" = "${VERSION}"
        "cloud.opsbox.image.fixid" = "${FIXID}"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="${VERSION}"
    }
    target = "loki"
    platforms = ["linux/arm64"]
    tags = [
        "registry.cn-chengdu.aliyuncs.com/seanly/kubeset:loki-${VERSION}-${FIXID}-arm64",
        "registry.cn-hangzhou.aliyuncs.com/seanly/kubeset:loki-${VERSION}-${FIXID}-arm64"
    ]
    output = ["type=image,push=true"]
}
target "loki-amd64" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "loki"
        "cloud.opsbox.image.version" = "${VERSION}"
        "cloud.opsbox.image.fixid" = "${FIXID}"
    }
    dockerfile = "Dockerfile"
    context  = "./"
    args = {
        VERSION="${VERSION}"
    }
    target = "loki"
    platforms = ["linux/amd64"]
    tags = [
        "registry.cn-chengdu.aliyuncs.com/seanly/kubeset:loki-${VERSION}-${FIXID}",
        "registry.cn-hangzhou.aliyuncs.com/seanly/kubeset:loki-${VERSION}-${FIXID}"
    ]
    output = ["type=image,push=true"]
}
