# frozen_string_literal: true

require 'rails/generators'

module KladrClient
  # Generators for KladrClient
  module Generators
    # Installs LokaliseRails KladrClient
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('./templates', __dir__)

      desc 'Creates a kladr_client config file.'

      def copy_config
        template 'kladr_client_config.rb', "#{Rails.root}/config/initializers/kladr_client.rb"
      end
    end
  end
end
