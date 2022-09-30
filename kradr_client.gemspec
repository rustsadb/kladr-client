# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kladr_client/version'

Gem::Specification.new do |s|
  s.name                  = 'kladr_client'
  s.version               = KladrClient::VERSION
  s.summary               = 'Kladr api client'
  s.licenses              = ['MIT']
  s.description           = 'This gem allows requests to klard api'
  s.authors               = ['Rustem Sadykov']
  s.email                 = 'magistik.mag@yandex.ru'
  s.homepage              = 'https://github.com/rustsadb/kladr-client'
  s.platform              = Gem::Platform::RUBY
  s.required_ruby_version = Gem::Requirement.new('>= 2.5')
  s.extra_rdoc_files      = ['README.md']

  s.files = Dir['README.md', 'LICENSE', 'CHANGELOG.md',
                'lib/**/*.rb', 'lib/**/*.rake', 'kradr_client.gemspec',
                '.github/*.md', 'Gemfile', 'Rakefile']

  s.add_dependency 'faraday', '~> 2.5'
  s.add_dependency 'oj', '~> 3.13'
  s.add_development_dependency 'codecov', '~> 0.2'
  s.add_development_dependency 'dotenv', '~> 2.5'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rails', '~> 7.0'
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rspec', '~> 3.6'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubocop-performance'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'simplecov', '~> 0.16'
  s.add_development_dependency 'sprockets-rails', '~> 3'
  s.add_development_dependency 'vcr'
  s.metadata['rubygems_mfa_required'] = 'true'
end
