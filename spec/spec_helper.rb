$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'erb'
require 'active_support/concern'
require 'action_view/helpers/capture_helper'
require 'action_view/helpers/tag_helper'
require 'rspec'
require 'simplecov'
SimpleCov.start
require 'autocomplete-off'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|

end
