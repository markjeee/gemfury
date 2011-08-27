module Gemfury
  # Defines constants and methods related to configuration
  module Configuration
    # An array of valid keys in the options hash when configuring
    VALID_OPTIONS_KEYS = [
      :user_api_key,
      :adapter,
      :endpoint,
      :user_agent,
      :check_gem_version].freeze

    # The adapter that will be used to connect if none is set
    DEFAULT_ADAPTER = :net_http

    # The endpoint that will be used to connect if none is set
    #
    DEFAULT_ENDPOINT = 'https://www.gemfury.com/1/'.freeze

    # The value sent in the 'User-Agent' header if none is set
    DEFAULT_USER_AGENT = "Gemfury RubyGem #{Gemfury::VERSION}".freeze

    # Default user API key
    DEFAULT_API_KEY = nil

    # Default to skip the gem version check on API calls
    DEFAULT_VERSION_CHECK = false

    # @private
    attr_accessor *VALID_OPTIONS_KEYS

    # When this module is extended, set all configuration options to their default values
    def self.extended(base)
      base.reset
    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
    end

    # Create a hash of options and their values
    def options
      options = {}
      VALID_OPTIONS_KEYS.each{|k| options[k] = send(k)}
      options
    end

    # Reset all configuration options to defaults
    def reset
      self.user_api_key       = DEFAULT_API_KEY
      self.adapter            = DEFAULT_ADAPTER
      self.endpoint           = DEFAULT_ENDPOINT
      self.user_agent         = DEFAULT_USER_AGENT
      self.check_gem_version  = DEFAULT_VERSION_CHECK
      self
    end
  end
end

