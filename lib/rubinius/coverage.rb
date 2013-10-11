require "rubinius/coverage/version"

module Rubinius
  class Coverage
    def self.loaded(flag)
      @loaded = flag
    end

    def self.loaded?
      @loaded == true
    end

    def self.load
      return if loaded?

      Rubinius::Tooling.load File.expand_path('../coverage/coverage', __FILE__)
      loaded true

      self
    end

    attr_reader :results

    def initialize
      self.class.load
    end

    def start
      Rubinius::Tooling.enable

      self
    end

    def stop
      @results = Rubinius::Tooling.disable

      self
    end
  end
end
