require 'rails'

module BaristaTest
  class Railtie < Rails::Railtie
    # Hook up our Rake tasks.
    rake_tasks do
      load(File.join(File.dirname(__FILE__), 'tasks', 'barista_test.rake'))
    end
  end
end
