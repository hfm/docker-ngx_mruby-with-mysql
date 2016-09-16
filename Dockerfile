FROM centos:7
MAINTAINER OKUMURA Takahiro <hfm.garden@gmail.com>

RUN yum -y -q install make gcc git rubygems openssl-devel curl wget bison mariadb-server mariadb-devel
RUN gem update --system 2.6.1
RUN gem i -N bundler -v 1.12.5
RUN gem i -N rake
RUN git clone --depth=1 https://github.com/matsumoto-r/ngx_mruby.git
ADD build_config.rb ngx_mruby/build_config.rb
RUN cd ngx_mruby && sh build.sh
RUN cp ngx_mruby/mruby/bin/mruby /usr/local/bin
