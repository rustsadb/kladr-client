# frozen_string_literal: true

require 'dotenv/load'
require 'simplecov'
require 'pry'
require 'vcr'

SimpleCov.start 'rails' do
  add_filter 'spec/'
  add_filter '.github/'
  add_filter 'lib/generators/templates/'
  add_filter 'lib/kladr_client/version'
end

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require_relative 'support/file_manager'
require_relative 'support/rake_utils'

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'
require_relative 'dummy/config/environment'

RSpec.configure do |config|
  config.include FileManager
  config.include RakeUtils
end

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.ignore_hosts '127.0.0.1', 'localhost'
  config.hook_into :webmock
end
