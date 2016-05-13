require File.expand_path( "../lib/middleman/cogs/version", __FILE__ )

Gem::Specification.new do |s|

  s.name          = 'middleman-cogs'
  s.version       = Middleman::Cogs::VERSION
  s.platform      = Gem::Platform::RUBY

  s.summary       = 'A minimal replacement for Middleman::Sprockets'
  s.description   = %q{ A minimal replacement for Middleman::Sprockets }
  s.authors       = ["Steven Sloan"]
  s.email         = "stevenosloan@gmail.com"
  s.homepage      = "http://github.com/stevenosloan/middleman-cogs"
  s.license       = "MIT"

  s.files         = Dir[ "{doc,lib}/**/*", "readme.md", "changelog.md" ]
  s.test_files    = Dir[ "spec/**/*.rb" ]
  s.require_path  = "lib"

  # Runtime
  s.add_dependency "middleman", ["~> 4.1"]

end
