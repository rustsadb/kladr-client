# frozen_string_literal: true

module KladrClient
  # Load Rake tasks
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/kladr_client_tasks.rake'
    end
  end
end
