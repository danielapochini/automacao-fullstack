require "httparty"
require "factory_bot"

require_relative "lib/factories"
require_relative "lib/database"
require_relative "services/user"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include FactoryBot::Syntax::Methods

  config.before :all do
    Database.new.clean_db
  end
end
