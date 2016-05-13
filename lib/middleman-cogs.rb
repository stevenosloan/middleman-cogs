require 'middleman-core'

Middleman::Extensions.register(:cogs) do
  require_relative 'middleman-cogs/version'
  require_relative 'middleman-cogs/extension'

  Middleman::Cogs::Extension
end
