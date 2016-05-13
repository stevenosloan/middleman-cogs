module Middleman
  module Cogs
    class Extension < Middleman::Extension
    end
  end
end
::Middleman::Extensions.register(:cogs, Middleman::Cogs::Extension)
