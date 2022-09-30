# frozen_string_literal: true

module RakeUtils
  def install_executor
    -> { Rake::Task['lokalise_rails:install'].execute }
  end
end
