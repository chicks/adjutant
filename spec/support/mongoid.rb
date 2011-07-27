RSpec.configure do |config|
  config.before(:each) { DatabaseCleaner[:mongoid].clean_with :truncation }
  config.include Mongoid::Matchers
end
