# frozen_string_literal: true

require 'fileutils'

module FileManager
  def remove_config
    FileUtils.remove_file config_file if File.file?(config_file)
  end

  def config_file
    "#{Rails.root}/config/lokalise_rails.rb"
  end
end
