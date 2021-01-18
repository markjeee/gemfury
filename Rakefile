require 'bundler'
Bundler::GemHelper.install_tasks
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')
task :default => :spec

if RUBY_VERSION > '2.0.0'
  Rake.add_rakelib 'rakelib'
end
