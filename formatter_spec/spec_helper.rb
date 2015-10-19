require 'rubygems'
require_relative 'start_coverage'

require 'rspec'
require_relative '../lib/sauce_documentation'

RSpec.configure do |config|
  config.add_formatter SauceDocumentation
end
