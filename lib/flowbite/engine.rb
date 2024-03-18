# frozen_string_literal: true

module Flowbite
  # :nodoc:
  class Engine < ::Rails::Engine
    initializer 'flowbite.assets' do |app|
      app.config.assets.paths << root.join('assets/builds').to_s
    end

    rake_tasks do
      load root.join('lib/tasks/flowbite_tasks.rake').to_s
    end
  end
end
