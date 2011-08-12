# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
#run Adjutant::Application
require 'resque/server'
run Rack::URLMap.new \
  "/"       => Adjutant::Application,
  "/admin/resque" => Resque::Server.new
