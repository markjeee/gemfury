require 'bundler'
Bundler::GemHelper.install_tasks
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')
task :default => :spec

desc 'Build all system packages'
task :build_system_packages do
  shell 'env PACKAGE_OUTPUT=deb packtory .'
  shell 'env PACKAGE_OUTPUT=rpm BUNDLE_GEMFILE=Gemfile.centos7 packtory .'
  shell 'env PACKAGE_OUTPUT=brew packtory .'
end

task :build_all_packages => [ :build, :build_system_packages ]

def shell(cmd)
  puts cmd
  Bundler.clean_system(cmd)
end
