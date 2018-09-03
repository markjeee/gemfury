begin
  require File.expand_path('../../../bundle/bundler/setup', __FILE__)
rescue LoadError
  gem "highline", ">= 1.6.0", "< 2.1.0.pre"
  gem "thor",     ">= 0.14.0", "< 1.0.0.pre"
end

require 'thor'
require 'yaml'
require 'highline'
require 'fileutils'

module Gemfury::Command; end

require 'gemfury/command/authorization'
require 'gemfury/command/app'
