# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lolize/version"

Gem::Specification.new do |s|
  s.name        = "lolize"
  s.version     = Lolize::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["miaout17"]
  s.email       = ["miaout17@gmail.com"]
  s.homepage    = "https://github.com/miaout17/lolize"
  s.summary     = %q{Colorize your ruby stdout with Lolcat}
  s.description = %q{Colorize your ruby stdout with Lolcat}

  s.rubyforge_project = "lolize"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'paint', '~> 0.8.3'
  s.add_development_dependency 'rake'
end
