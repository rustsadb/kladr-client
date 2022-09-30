# frozen_string_literal: true

require 'fileutils'

module FileManager
  def remove_config
    FileUtils.remove_file config_file if File.file?(config_file)
  end

  def config_file
    "#{Rails.root}/config/initializers/kladr_client.rb"
  end

  def add_config
    data = <<~DATA
      require 'kladr_client'
      KladrClient.config do |c|
        c.api_key = ENV['KLADR_KEY']
      end
    DATA
    File.open(config_file, 'w+:UTF-8') do |f|
      f.write data
    end
  end
end
