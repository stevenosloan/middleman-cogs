PROJECT_ROOT_PATH = File.dirname(File.dirname(File.dirname(__FILE__)))

require 'bundler'
Bundler.require :default, :test, :development

ENV['TEST'] = 'true'

require "middleman-core"
require "middleman-core/step_definitions"

require 'pry'
begin
  require File.join(PROJECT_ROOT_PATH, 'lib', 'middleman-cogs')
rescue => e
  binding.pry
end
