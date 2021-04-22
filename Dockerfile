FROM rust:1.51-alpine
MAINTAINER Douile <25043847+Douile@users.noreply.github.com>

LABEL "com.github.actions.name"="Rust Release binary"
LABEL "com.github.actions.description"="Automate publishing Rust build artifacts for GitHub releases through GitHub Actions"

LABEL "name"="Automate publishing Rust build artifacts for GitHub releases through GitHub Actions"
LABEL "version"="1.0.1"
LABEL "repository"="http://github.com/Douile/rust-release.action"
LABEL "maintainer"="Douile <25043847+Douile@users.noreply.github.com>"

RUN apk add --no-cache curl jq git build-base bash zip openssl-dev linux-headers

ADD entrypoint.sh ./entrypoint.sh
ADD build.sh ./build.sh

RUN chmod +x /entrypoint.sh /build.sh

ENTRYPOINT ["/entrypoint.sh"]
