# frozen_string_literal: true

require 'bundler/setup'

require 'bundler/gem_tasks'

require 'bundler/audit/task'
Bundler::Audit::Task.new

require 'bundler/plumber/task'
Bundler::Plumber::Task.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'
RuboCop::RakeTask.new

task lint: %w[bundle:audit bundle:leak rubocop]

task default: %w[lint spec]
