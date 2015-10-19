require 'rubygems'
require 'appium_thor'

Appium::Thor::Config.set do
  gem_name 'sauce_documentation_formatter'
  github_owner 'bootstraponline'
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

  desc 'cuke', 'Run cucumber tests'
  def cuke
    exec 'bundle exec cucumber -f progress'
  end

  desc 'cover', 'Push coverage results to coveralls'
  def cover
    require 'coveralls'
    Coveralls.push!
  end

  # so many errors.
  desc 'cop', 'Execute rubocop'
  def cop
    exec 'bundle exec rubocop --display-cop-names'
  end
end
