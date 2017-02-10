FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.9

RUN gem install ec2_ultradns_updater --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2_ultradns_updater"]
CMD ["--help"]
