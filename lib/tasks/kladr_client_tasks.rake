# frozen_string_literal: true

require 'rake'
require "#{Rails.root}/config/kladr_client"

namespace :kladr_client do
  task :import do
    KladrClient::TaskDefinition::Installer.start
  end
end
