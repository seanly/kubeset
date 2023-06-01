ARG VARIANT=2-linux
FROM mcr.microsoft.com/vscode/devcontainers/universal:${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
USER root

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends tig neovim tmux

COPY --from=docker/compose-bin:v2.17.2 /docker-compose /usr/bin/docker-compose

USER codespace