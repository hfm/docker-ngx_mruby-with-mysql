FROM centos:7
MAINTAINER OKUMURA Takahiro <hfm.garden@gmail.com>

RUN yum -y -q install make gcc git rubygems openssl-devel curl wget bison mariadb-server mariadb-devel \
      && gem update --system 2.6.1 \
      && gem i -N bundler -v 1.12.5 \
      && gem i -N rake \
      && git clone --depth=1 https://github.com/matsumoto-r/ngx_mruby.git \
      && cp ci/mruby/build_config.rb ngx_mruby/ \
      && cd ngx_mruby && sh build.sh \
      && cp mruby/bin/mruby /usr/local/bin
