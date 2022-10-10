# frozen_string_literal: true

module RakeUtils
  def install_executor
    -> { Rake::Task['kladr_client:install'].execute }
  end
end
