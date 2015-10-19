require_relative 'spec_helper'

describe 'Run formatter spec' do
  def rel_path *args
    File.expand_path(File.join(__dir__, '..', *args))
  end

  it 'records coverage out of process and has expected rspec output' do
    spec    = rel_path 'formatter_spec'
    command = %Q(bundle exec rspec "#{spec}")
    output  = `#{command}`

    puts "#{command}"

    [expected1, expected2, expected3].each do |expected|
      expect(output).to include(expected)
    end
  end
end

