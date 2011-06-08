# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "autocomplete-off"
  gem.homepage = "http://github.com/phatworx/autocomplete-off"
  gem.license = "MIT"
  gem.summary = %Q{Adds `autocomplete="off"` html attribute to FormHelper generated input tags by default.}
  gem.description = %Q{Adds `autocomplete="off"` html attribute to FormHelper generated input tags by default.}
  gem.email = "alexdreher@lxmedia.net"
  gem.authors = ["Alexander Dreher"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new