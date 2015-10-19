class SauceDocumentation < RSpec::Core::Formatters::DocumentationFormatter
  RSpec::Core::Formatters.register self, :dump_failures

  #
  # Modifying the exception backtrace causes the default formatter to prepend #
  #
  # If the link is outputted after failure.fully_formatted then the backtrace
  # will always appear before the Sauce job link
  #
  # By updating the exception message with instance_eval, the job link will
  # show up after the message and before the backtrace without additional
  # formatting.
  #

  def dump_failures(notification)
    failure_notifications = notification.failure_notifications
    return if failure_notifications.empty?

    failure_notifications.each do |failure|
      exception = failure.exception
      next unless exception

      sauce_test_link = failure.example.metadata[:sauce_test_link]
      next unless sauce_test_link

      # Use nonbreaking space to bypass message.strip and ensure we have
      # a newline after the message and before the stack trace.
      nbsp = "\u00A0"
      message = "#{exception.message}\n#{sauce_test_link}\n#{nbsp}"
      exception.instance_eval <<-RUBY
        def message
          %q(#{message})
        end

        def to_s
          message
        end
      RUBY
    end

    # Use default RSpec logic to format the failures now that we've
    # attached the Sauce test link to the exceptions
    super
  end
end
