source 'http://rubygems.org'

gem 'rails', '3.1.0.beta1'

gem 'bson_ext'
gem 'mongoid', :git => 'git://github.com/mongoid/mongoid.git'

gem 'devise'
gem 'devise_aes_encryptable', :git => 'git://github.com/chicks/devise_aes_encryptable.git'

gem 'sprockets', '2.0.0.beta.2'

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
  gem 'cucumber-rails'
  gem 'mongoid-rspec'
  gem 'rspec-rails'
  gem 'fabrication'
end