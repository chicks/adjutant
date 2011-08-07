class SessionsController < Devise::SessionsController
  layout "unauthenticated"
  def after_sign_in_path_for(resource) 
    dashboard_path 
  end  
end