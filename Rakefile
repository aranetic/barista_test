require 'rubygems'
require 'bundler'

Bundler.setup

require 'rake'
require 'rspec/core/rake_task'

$LOAD_PATH << 'lib'
require 'barista_test/rake_task'

task :default => [:spec, 'barista:test']

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

BaristaTest::RakeTask.new do |spec|
end
