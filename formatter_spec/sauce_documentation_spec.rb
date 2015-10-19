require_relative 'spec_helper'

describe 'SauceDocumentation' do
  def add_sauce_link
    RSpec.current_example.metadata[:sauce_test_link] = 'https://saucelabs.com/beta/tests/1234'
  end

  it 'fails and does not output sauce link' do
    # if we're not using sauce_rspec then we should see the regular failure
    # except omit the link
    expect(1).to eq(2)
  end

  it 'fails and outputs sauce link' do
    add_sauce_link
    expect(3).to eq(4)
  end
end
