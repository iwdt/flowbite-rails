# frozen_string_literal: true

require_relative 'lib/flowbite/version'

Gem::Specification.new do |spec|
  spec.name        = 'flowbite'
  spec.version     = Flowbite::VERSION
  spec.authors     = ['Ivan Naumov']
  spec.email       = ['ivannaymov@gmail.com']

  spec.homepage    = 'https://github.com/iwdt/flowbite-rails'
  spec.summary     = 'The most popular library of interactive components built with Tailwind CSS'
  spec.description = <<~TEXT
    This gem adds the Flowbite assets to your asset pipeline so you can import them in your Rails project.
  TEXT

  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['source_code_uri'] = 'https://github.com/iwdt/flowbite-rails'
  spec.metadata['bug_tracker_uri'] = 'https://github.com/iwdt/flowbite-rails/issues'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = Dir[
    'lib/**/*',
    'assets/builds/*',
    'flowbite.gemspec',
    'LICENSE',
    'Rakefile',
    'README.md'
  ]
end
