source 'http://rubygems.org'

gem 'rails', '3.1.0.rc8'
gem 'resque'

gem 'sprockets'
gem 'handlebars_assets'
gem 'execjs', :git => 'git://github.com/sstephenson/execjs.git'

gem 'bson_ext'
gem 'mongoid', :git => 'git://github.com/mongoid/mongoid.git'

gem 'devise'
gem 'devise_aes_encryptable', :git => 'git://github.com/chicks/devise_aes_encryptable.git'

# Adapters
gem 'net-ldap'

# Asset template engines
gem 'sass'
gem 'coffee-script'
gem 'uglifier'
gem 'jquery-rails'

group :test do
  # Pretty printed test output
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'capybara'
  gem 'cucumber'
  gem 'cucumber-rails'
  gem 'mongoid-rspec'
  gem 'rspec-rails'
  gem 'fabrication'
  gem 'factory_girl_rails'
end
