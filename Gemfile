source "http://rubygems.org"

# Pull runtime dependencies from Gemspec
gemspec

# Lock rake
gem 'rake', '~> 13.0'

# Development dependencies
group :development do
  gem "webmock", "~> 3.8.3"
  gem "rspec", "~> 3.0"
  gem "multi_json"
  gem 'fakefs'
  gem "json"
  gem "rexml"
  gem "yard"

  source 'https://repo.nlevel.io/ruby/' do
    gem 'docker_task', '~> 0.1.12'
  end
end
