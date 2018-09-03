require 'bundler'
Bundler::GemHelper.install_tasks
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')
task :default => :spec

desc 'Build all system packages'
task :build_system_packages do
  shell 'env PACKAGE_OUTPUT=deb packtory .'
  shell 'env PACKAGE_OUTPUT=rpm packtory .'
  shell 'env PACKAGE_OUTPUT=brew packtory .'
end

def shell(cmd)
  puts cmd
  Bundler.clean_system(cmd)
end
