FROM ubuntu:14.04
MAINTAINER Daisuke Fujita <dtanshi45@gmail.com> (@dtan4)

RUN apt-get update && \
    apt-get install -y texlive texlive-lang-cjk && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tex

CMD ["platex", "-v"]
