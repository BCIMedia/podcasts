require "podcast/engine"

module Admin
  module Podcast
    class << self
      attr_accessor :configuration
    end

    def self.configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
    class Configuration
      # attr_accessor :same_setting1, :some_setting2

      def initialize
        # @some_setting1 = ""
        # @some_setting2 = ""
      end
    end
  end
end
