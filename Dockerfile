FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.9

RUN gem install cfn-nag --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cfn_nag"]
CMD ["--help"]
