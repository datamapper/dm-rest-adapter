# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dm-rest-adapter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors     = [ 'Scott Burton @ Joyent Inc' ]
  gem.email       = [ 'scott.burton [a] joyent [d] com' ]
  gem.summary     = 'REST Adapter for DataMapper'
  gem.description = gem.summary
  gem.homepage    = "http://datamapper.org"

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE README.rdoc]

  gem.name          = 'dm-rest-adapter'
  gem.require_paths = [ "lib" ]
  gem.version       = DataMapper::RestAdapter::VERSION

  gem.add_runtime_dependency('dm-serializer', '~> 1.3.0.beta')

  gem.add_development_dependency('rake',    '~> 0.9.2')
  gem.add_development_dependency('rspec',   '~> 1.3.2')
  gem.add_development_dependency('fakeweb', '~> 1.3')
end
