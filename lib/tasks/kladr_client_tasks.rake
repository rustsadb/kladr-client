# frozen_string_literal: true

require 'rake'
require 'kladr_client'

namespace :kladr_client do
  task :install do
    KladrClient::TaskDefinition::Installer.install
  end
end
