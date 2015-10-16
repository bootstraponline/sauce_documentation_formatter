require 'pry'

class SauceDocumentation < RSpec::Core::Formatters::DocumentationFormatter

 Formatters.register self, :example_failed, :dump_failures

  def example_failed(failure)
    binding.pry
    failure.example.metadata
  end

end
