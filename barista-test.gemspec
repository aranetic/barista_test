# -*- mode: ruby -*-

Gem::Specification.new do |s|
  s.name = "barista-test"
  s.version = "0.0.0"
  s.author = "Eric Kidd"
  s.email = "git@randomhacks.net"
  s.homepage = "http://github.com/emk/barista-test"
  s.platform = Gem::Platform::RUBY
  s.summary = "Command-line test runner for use with Barista and CoffeeScript"
  s.require_path = "lib"

  s.add_dependency('barista', '~> 0.5.1')
  s.add_dependency('rake', '>= 0.8.7')
  s.add_development_dependency('rspec', '>= 2.0.0.beta.22')
end                    
