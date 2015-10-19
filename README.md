# Sauce Documentation Formater 
[![Gem Version](https://badge.fury.io/rb/sauce_documentation_formatter.svg)](https://rubygems.org/gems/sauce_documentation_formatter)
[![Build Status](https://travis-ci.org/bootstraponline/sauce_documentation_formatter.svg)](https://travis-ci.org/bootstraponline/sauce_documentation_formatter/builds)
[![Dependency Status](https://gemnasium.com/bootstraponline/sauce_documentation_formatter.svg)](https://gemnasium.com/bootstraponline/sauce_documentation_formatter)
[![Coverage Status](https://coveralls.io/repos/bootstraponline/sauce_documentation_formatter/badge.svg?nocache2)](https://coveralls.io/r/bootstraponline/sauce_documentation_formatter)

## Usage

```ruby
# spec_helper.rb
require 'sauce_documentation'

RSpec.configure do |config|
  config.before(:suite) do
    config.add_formatter SauceDocumentation
  end
end
```

Identical to RSpec Documentation formatter except the `example.metadata[:sauce_test_link]`
is used to output the sauce test link.

# Example output

```
  2) SauceDocumentation fails and outputs sauce link
     Failure/Error: expect(3).to eq(4)
       
       expected: 4
            got: 3
       
       (compared using ==)
       
       https://saucelabs.com/beta/tests/1234
       
     # ./formatter_spec/sauce_documentation_spec.rb:16:in `block (2 levels) in <top (required)>'
```
