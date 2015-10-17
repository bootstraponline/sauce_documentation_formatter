require_relative 'lib/sauce_documentation/version'

Gem::Specification.new do |spec|
  spec.name          = 'sauce_documentation'
  spec.version       = SauceDocumentationMetadata::VERSION
  spec.date          = SauceDocumentationMetadata::DATE
  spec.license       = 'http://www.apache.org/licenses/LICENSE-2.0.txt'
  spec.description   = spec.summary = 'Sauce documentation formatter for RSpec'
  spec.description   += '.' # avoid identical warning
  spec.authors       = spec.email = ['code@bootstraponline.com']
  spec.homepage      = 'https://github.com/bootstraponline/sauce_rspec'
  spec.require_paths = ['lib']

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_runtime_dependency 'rspec', '>= 3.3.0'

  spec.add_development_dependency 'pry', '~> 0.10.2'
  spec.add_development_dependency 'rubocop', '~> 0.34.2'
  spec.add_development_dependency 'appium_thor', '~> 1.0.1'
  spec.add_development_dependency 'simplecov', '~> 0.10.0'
  spec.add_development_dependency 'coveralls', '~> 0.8.3'
end
