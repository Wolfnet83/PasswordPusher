source 'http://rubygems.org'
source 'https://repo.fury.io/pglombardo/'

gem 'rails', '~> 3.2'

group :development, :test do
  gem 'silent-postgres'
  gem "ruby-debug19", :platforms => :ruby_19
  gem "ruby-debug", :platforms => :ruby_18
  gem "byebug", :platforms => :ruby_20
  gem "nifty-generators"
  gem 'pry'
  gem 'capistrano-rails', '~>1.1.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv'
  gem 'capistrano-passenger'
end

gem 'json'
gem 'haml'
gem 'haml-rails'
gem 'fastercsv' # Only required on Ruby 1.8 and below
gem 'rails_admin'
gem 'therubyracer'
gem 'ezcrypto', :git => 'git://github.com/pglombardo/ezcrypto.git'
gem 'modernizr-rails', :git => 'git://github.com/russfrisch/modernizr-rails.git'
gem "high_voltage", '~> 2.1.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'foreman'
gem 'unicorn'
gem 'jquery-rails'
gem 'delayed_job_active_record'
gem "devise"
gem "omniauth"
gem 'omniauth-openid'
gem 'omniauth-twitter'

group :production do
  gem 'pg'
  gem 'mysql2'
end

group :private do
  gem "sqlite3"
end
