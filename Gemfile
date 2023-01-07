# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

group :development, :test do
  gem 'awesome_print', '~> 1.9'
  gem 'debug', '~> 1.6'
  gem 'faker', '~> 3.0'
  gem 'rake', '~> 13.0'
  gem 'rspec', '~> 3.12'
end

group :lint do
  gem 'bundler-audit', '~> 0.9.1', require: false
  gem 'bundler-leak', '~> 0.3.0', require: false
  gem 'rubocop', '~> 1.39', require: false
  gem 'rubocop-faker', '~> 1.1', require: false
  gem 'rubocop-performance', '~> 1.15', require: false
  gem 'rubocop-rake', '~> 0.6.0', require: false
  gem 'rubocop-rspec', '~> 2.15', require: false
  gem 'rubocop-thread_safety', '~> 0.4.4', require: false
end

group :test do
  gem 'simplecov', '~> 0.22.0'
  gem 'webmock', '~> 3.18'
end
