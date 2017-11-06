FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.7

RUN gem install cfn-nag --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cfn_nag"]
CMD ["--help"]
