# frozen_string_literal: true

module KladrClient
  module TaskDefinition
    class Installer < Base
      class << self
        def install
          $stdout.print 'Task complete!'
          true
        end
      end
    end
  end
end
