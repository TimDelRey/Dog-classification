# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.4.4"

gem "rails", "7.0.8.7"
# PostgreSQL database adapter
gem "pg", "~> 1.4"
# Use Puma as the app server
gem "puma", "~> 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'
# Use SCSS for stylesheets
gem "sass-rails", ">= 6"

gem "jsbundling-rails"

# Hotwire Turbo for real-time features
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'
# Build JSON APIs
gem "jbuilder"

# Timezone data for Windows (можно оставить на всякий)
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
gem 'bigdecimal'
gem 'mutex_m'

group :development, :test do
  gem 'rubocop-rails-omakase', require: false
  gem 'factory_bot_rails'
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "listen", "~> 3.3"
  gem 'annotaterb'
end

group :development do
  gem "web-console", ">= 4.1.0"
  # gem "rack-mini-profiler"
  # gem "spring"
  # gem "spring-watcher-listen"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  # gem "webdrivers"
end
