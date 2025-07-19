# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.4.4"

gem "rails", "7.0.8.7"

# PostgreSQL database adapter
gem "pg", "~> 1.4"

# Use Puma as the app server
gem "puma", "~> 5.0"

# Use SCSS for stylesheets
gem "sass-rails", ">= 6"

# JS bundler, можно выбрать esbuild или webpacker, пример с esbuild:
gem "jsbundling-rails"

# Hotwire Turbo for real-time features
gem "turbo-rails"

# Build JSON APIs
gem "jbuilder"

# Timezone data for Windows (можно оставить на всякий)
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "listen", "~> 3.3"
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "rack-mini-profiler"
  gem "spring"
  gem "spring-watcher-listen"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
