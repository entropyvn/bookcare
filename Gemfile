source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read(File.join(File.dirname(__FILE__), '.ruby-version')).strip

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", '~> 7.0.3'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use mysql as the database for Active Record
gem "mysql2", "~> 0.5"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Bundle and process CSS in Rails with Tailwind, PostCSS, and Sass via Node.js.
gem "cssbundling-rails", "~> 1.1"

# Bundle and transpile JavaScript in Rails with esbuild, rollup.js, or Webpack.
# gem "jsbundling-rails", "~> 1.1"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails"

# Use Stimulus in your Ruby on Rails app
gem 'stimulus-rails'

# Use Turbo in your Ruby on Rails app
gem 'turbo-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

# Rails I18n de-facto standard library for ActiveRecord model/data translation.
gem 'globalize'

# A framework for building reusable, testable & encapsulated view components in Ruby on Rails.
gem 'view_component'

# Pagination
gem 'pagy', '~> 5.10'

# Minimal authorization through OO design and pure Ruby classes
gem 'pundit'

# Flexible authentication solution for Rails with Warden.
gem 'devise', '~> 4.8.1'

# OmniAuth is a flexible authentication system utilizing Rack middleware.
gem 'omniauth'
gem 'omniauth-rails_csrf_protection'

# Role management library with resource scoping
gem 'rolify'

# Enumerated attributes with I18n and ActiveRecord/Mongoid support
gem 'enumerize'

# AASM - State machines for Ruby classes (plain Ruby, ActiveRecord, Mongoid, NoBrainer, Dynamoid)
gem 'aasm'

# Search Engine Optimization (SEO) for Ruby on Rails applications.
gem 'meta-tags'

# Object-based searching [https://github.com/activerecord-hackery/ransack]
gem 'ransack', github: 'activerecord-hackery/ransack'

# Short delete
gem 'paranoia'

# Track changes to your rails models
gem 'paper_trail'

# It allows you to create pretty URL’s and work with human-friendly strings as if they were numeric ids for ActiveRecord models.
gem 'friendly_id', '~> 5.4.0'

# A tool to help browse, develop, test & document ViewComponents in Ruby on Rails apps. 
gem 'lookbook', '~> 1.0.4'

# Do some browser detection with Ruby. Includes ActionController integration.
gem 'browser', '~> 5.3.1'

# A wonderfully simple way to load Ruby code [https://github.com/jarmo/require_all]
gem 'require_all'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]

  # A Ruby gem to load environment variables from `.env`.
  # See https://github.com/bkeepers/dotenv
  gem 'dotenv-rails'
  gem 'factory_bot', '~> 6.2'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'fasterer'
  gem 'rspec-rails', '~> 6.0.0'
  
  # https://github.com/ViewComponent/rspec-viewcomponent
  gem 'rspec-viewcomponent'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  # Annotate Rails classes with schema and routes info
  gem 'annotate'

  # Preview mail in the browser instead of sending.
  gem 'letter_opener'

  # Better error page for Rack apps
  gem 'better_errors'
  gem 'binding_of_caller'

  # Pretty print your Ruby objects with style -- in full color and with proper indentation
  gem 'awesome_print'

  # Deploy
  gem 'capistrano',         require: false
  gem 'capistrano3-puma',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-rbenv',   require: false
  gem 'capistrano-rvm',     require: false
  gem 'sshkit-sudo'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'simplecov', require: false
end
