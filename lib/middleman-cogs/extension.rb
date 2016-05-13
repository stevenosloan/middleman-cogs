require 'middleman-core/contracts'

module Middleman
  module Cogs
    class Extension < ::Middleman::Extension
      option :extensions, ['.css', '.js'], 'Output extensions to be processed'

      Contract ::Middleman::Application, Hash, Maybe[Proc] => Any
      def initialize app, options_hash={}, &block
        super
      end

      Contract ResourceList => ResourceList
      def manipulate_resource_list resources
        resources.each do |r|
          r.filters << RenderFilter.new(app, options) if processible?(r)
        end
      end

      private

        def processible? resource
          *template_exts, target_ext = Middleman::Util.collect_extensions(resource.source_file)
          options[:extensions].include?(target_ext)
        end

      class RenderFilter
        attr_reader :filter_name,
                    :app,
                    :options

        def initialize app, options
          @filter_name = :cogs
          @app         = app
          @options     = options
        end

        def execute_filter body
          body
        end
      end

    end
  end
end
