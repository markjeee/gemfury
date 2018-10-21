require 'bundler'
Bundler::GemHelper.install_tasks
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')
task :default => :spec

desc 'Compile manual files'
task :man do
  sh 'ronn man/fury.1.ronn'
end
