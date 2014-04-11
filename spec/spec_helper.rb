require 'rspec'

RSpec.configure do |config|
  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
  end

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end
end

require 'support/shared_examples'

