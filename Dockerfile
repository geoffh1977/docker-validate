# Project Build Container
FROM geoffh1977/python3:latest
LABEL maintainer="geoffh1977 <geoffh1977@gmail.com>"
USER root

# Install Packages
# hadolint ignore=DL3018,DL3013
RUN apk add --update --no-cache ruby ruby-json make && \
    pip3 install --no-cache-dir --upgrade yamllint cfn-lint && \
    gem install --no-ri --no-rdoc cfn-nag && \
    mkdir /project && \
    chown "${ALPINE_USER}":"${ALPINE_USER}" /project

# Install Hadolint
RUN wget -q -O /usr/bin/hadolint "https://github.com/hadolint/hadolint/releases/download/v1.16.0/hadolint-Linux-x86_64" && \
    chmod 0755 /usr/bin/hadolint

# Install ShellCheck
RUN wget -q -O /tmp/shellcheck-stable.linux.x86_64.tar.xz "https://storage.googleapis.com/shellcheck/shellcheck-stable.linux.x86_64.tar.xz" && \
    tar xf /tmp/shellcheck-stable.linux.x86_64.tar.xz -C /tmp/ && \
    cp -a /tmp/shellcheck-stable/shellcheck /usr/bin/ && \
    chmod 0755 /usr/bin/shellcheck && \
    rm -rf /tmp/shellcheck-stable /tmp/shellcheck-stable.linux.x86_64.tar.xz

WORKDIR /project
USER ${ALPINE_USER}
