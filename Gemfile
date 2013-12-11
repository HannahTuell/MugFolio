
source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'devise'
gem "socialization"
gem "paperclip", "~> 3.0"
gem 'public_activity'
gem 'simplecov', :require => false, :group => :test


# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
end
group :test do
  gem 'cucumber-rails'
  gem 'cucumber-rails-training-wheels'
  gem 'mocha', :require => false
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
    gem 'sass-rails',   '~> 3.2.3'
    gem 'coffee-rails', '~> 3.2.1'

    # See https://github.com/sstephenson/execjs#readme for more supported runtimes
    gem 'therubyracer'

    gem 'zurb-foundation', '~> 4.0.0'
    gem 'uglifier', '>= 1.0.3'
end

group :production do
    gem 'pg'
end
group :development do
    gem 'sqlite3'
end
gem 'jquery-rails'

