begin
  require 'middleman-core/rack'
rescue LoadError
end

module Middleman
  module Fixture
    class << self
      def app &block
        ENV['MM_ROOT'] = Given::TMP

        require 'middleman-core/renderers/sass'
        Middleman::Application.new do
          instance_eval(&block) if block
        end
      end
    end
  end
end
