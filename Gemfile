source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Rails Gems
gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.3', '>= 7.0.3.1'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Development Gems
gem 'cancancan'
gem 'devise'
gem 'rubocop', '>= 1.0', '< 2.0'

group :development, :test do
  gem 'bullet'
  gem 'capybara'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
  gem 'rswag-specs'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :development do
  gem 'letter_opener'
  gem 'web-console'
end

group :test do
  gem 'rails-controller-testing'
end
