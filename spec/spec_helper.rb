# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  # config.profile_examples = 10  # Print the 10 slowest examples and example groups at the
  config.expect_with :rspec do |expectations|
    # Enable only the newer, non-monkey-patching expect syntax.
    # For more details, see:
    #   - http://myronmars.to/n/dev-blog/2012/06/rspecs-new-expectation-syntax
    expectations.syntax = :expect
  end
end

# Require Gem
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'opinionated_hashie'
