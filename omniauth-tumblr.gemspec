# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-tumblr/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-tumblr"
  s.version     = Omniauth::Tumblr::VERSION
  s.authors     = ["Sanjay Ginde"]
  s.email       = ["sanjayginde@gmail.com"]
  s.homepage    = "https://github.com/contently/omniauth-tumblr"
  s.summary     = %q{Tumblr strategy for OmniAuth}
  s.description = %q{Tumblr strategy for OmniAuth, which is taken heavily for the pre 1.0 release of the OmniAuth gem}

  s.rubyforge_project = "omniauth-tumblr"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0.0'

  s.add_development_dependency 'rspec', '~> 2.7.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'rack-test'
end
