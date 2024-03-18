# frozen_string_literal: true

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require 'rails/test_unit/reporter'
Rails::TestUnitReporter.executable = 'bin/test'
