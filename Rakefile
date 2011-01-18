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
  gem.name = "geo_mere_laal"
  gem.homepage = "http://github.com/kristianmandrup/geo_mere_laal"
  gem.license = "MIT"
  gem.summary = %Q{Geo form helpers for Rails 2.3+}
  gem.description = %Q{Geo form helpers to auto-fill form fields using your location}
  gem.email = "kmandrup@gmail.com"
  gem.authors = ["Kristian Mandrup"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)

  gem.add_runtime_dependency 'rails', '>= 2.3.5'
end
Jeweler::RubygemsDotOrgTasks.new

# require 'rake'
# require 'rake/testtask'
# require 'rake/rdoctask'
# 
# desc 'Default: run unit tests.'
# task :default => :test
# 
# desc 'Test the geo_mere_laal plugin.'
# Rake::TestTask.new(:test) do |t|
#   t.libs << 'lib'
#   t.libs << 'test'
#   t.pattern = 'test/**/*_test.rb'
#   t.verbose = true
# end
# 
# desc 'Generate documentation for the geo_mere_laal plugin.'
# Rake::RDocTask.new(:rdoc) do |rdoc|
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title    = 'GeoMereLaal'
#   rdoc.options << '--line-numbers' << '--inline-source'
#   rdoc.rdoc_files.include('README')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end
# 
