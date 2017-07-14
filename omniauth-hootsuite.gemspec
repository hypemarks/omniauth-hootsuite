# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/hootsuite/version'

Gem::Specification.new do |s|
  s.name          = 'omniauth-hootsuite'
  s.version       = Omniauth::Hootsuite::VERSION
  s.authors       = ['Francois Deschenes']
  s.email         = ['fdeschenes@me.com']
  s.description   = %q{Hootsuite OAuth strategy for OmniAuth}
  s.summary       = %q{Hootsuite OAuth strategy for OmniAuth}
  s.homepage      = 'https://github.com/hypemarks/omniauth-hootsuite'
  s.license       = 'MIT'

  s.files         = Dir['LICENSE.txt', 'README.md', 'lib/**/*']
  s.test_files    = Dir['spec/**/*']
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'coveralls'

  s.add_dependency 'omniauth-oauth2'
  s.add_dependency 'multi_json'
end
