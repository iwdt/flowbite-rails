# frozen_string_literal: true

namespace :flowbite do
  namespace :bundler do
    desc 'Download flowbite plugin for usage with standalone Tailwind CSS'
    task :plugin do
      plugin_path = Flowbite::Engine.root.join('assets/builds/flowbite-plugin.js')
      target_path = Rails.root.join('vendor/')

      mkdir target_path unless target_path.exist?

      target_path = target_path.join('javascript/')

      mkdir target_path unless target_path.exist?

      target_path = target_path.join('flowbite/')

      mkdir target_path unless target_path.exist?

      cp_r plugin_path, target_path.join('plugin.js')
    end
  end
end
