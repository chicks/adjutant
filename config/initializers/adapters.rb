# Load the app/adapters dir
Adjutant::Application.config.autoload_paths += %W(#{Rails.root}/app/adapters)
Dir["#{Rails.root}/app/adapters/*.rb"].each { |file| require file }