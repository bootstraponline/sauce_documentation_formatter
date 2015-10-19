module Helpers
  def expected1
    indent = ' ' * 7
    nbsp   = "\u00A0"

    @expected1 ||= (<<OUTPUT).strip
SauceDocumentation
  fails and does not output sauce link (FAILED - 1)
  fails and outputs sauce link (FAILED - 2)

Failures:

  1) SauceDocumentation fails and does not output sauce link
     Failure/Error: expect(1).to eq(2)
#{indent}
       expected: 2
            got: 1
#{indent}
       (compared using ==)
     # ./formatter_spec/sauce_documentation_spec.rb:11:in `block (2 levels) in <top (required)>'

  2) SauceDocumentation fails and outputs sauce link
     Failure/Error: expect(3).to eq(4)
#{indent}
       expected: 4
            got: 3
#{indent}
       (compared using ==)
#{indent}
       https://saucelabs.com/beta/tests/1234
#{indent}#{nbsp}
     # ./formatter_spec/sauce_documentation_spec.rb:16:in `block (2 levels) in <top (required)>'

Finished in
OUTPUT
  end

  def expected2
    @expected2 ||= '2 examples, 2 failures'
  end

  def expected3

    @expected3 ||= (<<OUTPUT).strip
Failed examples:

rspec ./formatter_spec/sauce_documentation_spec.rb:8 # SauceDocumentation fails and does not output sauce link
rspec ./formatter_spec/sauce_documentation_spec.rb:14 # SauceDocumentation fails and outputs sauce link

OUTPUT
  end
end

RSpec.configure do |config|
  config.include Helpers
end
