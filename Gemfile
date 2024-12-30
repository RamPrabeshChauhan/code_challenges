# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.7', '>= 6.1.7.10'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

gem 'sprockets-rails'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'webpacker', '~> 5.4'

gem 'rubocop', require: false

# mutex_m - Provides a mutex (mutual exclusion) module for thread synchronization
# Uses:
# - Protect shared resources in multi-threaded applications
# - Prevent race conditions when multiple threads access same data
# - Implement thread-safe operations
gem 'mutex_m'

# base64 - For encoding and decoding Base64 data
# Uses:
# - Encode binary data to text for email attachments
# - Handle image data in data URIs
# - Encode authentication credentials
# - Process binary files for API transmissions
gem 'base64'

# bigdecimal - Provides arbitrary-precision decimal arithmetic
# Uses:
# - Financial calculations requiring exact precision
# - Scientific computations where floating-point errors are unacceptable
# - Currency operations and accounting
# - Mathematical operations requiring high accuracy
gem 'bigdecimal'
