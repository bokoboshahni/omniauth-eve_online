# frozen_string_literal: true

unless ENV['NO_COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    enable_coverage :branch
  end
end

require 'omniauth/eve_online'

require 'webmock/rspec'

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_doubled_constant_names = true
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!

  config.default_formatter = 'doc' if config.files_to_run.one?
  config.example_status_persistence_file_path = 'tmp/examples.txt'
  config.order = :random
  config.profile_examples = 10 if ENV['RSPEC_PROFILE_EXAMPLES']
  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.warnings = true

  config.before do
    WebMock.reset!
  end
end
