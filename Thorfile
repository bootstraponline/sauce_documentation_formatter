require 'rubygems'
require 'appium_thor'

Appium::Thor::Config.set do
  gem_name 'sauce_documentation_formatter'
  github_owner 'bootstraponline'
  version_file 'lib/sauce_documentation/version.rb'
end

# Must use '::' otherwise Default will point to Thor::Sandbox::Default
# Debug by calling Thor::Base.subclass_files via Pry
#
# https://github.com/erikhuda/thor/issues/484
#
# rubocop:disable Style/ClassAndModuleChildren
class ::Default < Thor
  desc 'spec', 'Run RSpec tests'
  def spec
    exec 'bundle exec rspec spec'
  end

  desc 'cover', 'Push coverage results to coveralls'
  def cover
    require 'coveralls'
    Coveralls.push!
  end

  # so many errors.
  desc 'cop', 'Execute rubocop'
  def cop
    exec 'bundle exec rubocop --display-cop-names lib/'
  end
end
