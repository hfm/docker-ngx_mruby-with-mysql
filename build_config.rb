MRuby::Build.new do |conf|
  toolchain :gcc

  conf.gembox 'full-core'

  conf.gem :github => 'iij/mruby-io'
  conf.gem :github => 'iij/mruby-env'
  conf.gem :github => 'iij/mruby-dir'
  conf.gem :github => 'iij/mruby-digest'
  conf.gem :github => 'iij/mruby-process'
  conf.gem :github => 'iij/mruby-pack'
  conf.gem :github => 'iij/mruby-socket'
  conf.gem :github => 'mattn/mruby-json'
  conf.gem :github => 'mattn/mruby-onig-regexp'
  conf.gem :github => 'matsumoto-r/mruby-sleep'
  conf.gem :github => 'matsumoto-r/mruby-userdata'
  conf.gem :github => 'matsumoto-r/mruby-uname'
  conf.gem :github => 'matsumoto-r/mruby-mutex'
  conf.gem :github => 'matsumoto-r/mruby-localmemcache'

  # ngx_mruby extended class
  conf.gem './mrbgems/ngx_mruby_mrblib'
  conf.gem './mrbgems/rack-based-api'

  # use redis on ngx_mruby
  conf.gem :github => 'matsumoto-r/mruby-redis'

  # use mysql on ngx_mruby
  conf.gem :github => 'mattn/mruby-mysql'

  # read mysql-setting from ini file
  conf.gem :github => 'hfm/mruby-ini'

  # use unit test on ngx_mruby
  conf.gem :github => 'iij/mruby-mtest'
  conf.gem :github => 'iij/mruby-require'
  conf.gem :github => 'hfm/mruby-test-mysqld'
end
