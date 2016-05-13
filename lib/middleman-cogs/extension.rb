require 'middleman-core/contracts'

module Middleman
  module Cogs
    class Extension < ::Middleman::Extension
      option :extensions, ['.css', '.js'], 'Output extensions to be processed'

      Contract ::Middleman::Application, Hash, Maybe[Proc] => Any
      def initialize app, options_hash={}, &block
        super
      end

    end
  end
end
