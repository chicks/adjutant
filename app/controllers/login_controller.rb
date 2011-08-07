class LoginController < Devise::SessionsController
  layout "login"
  #def after_sign_in_path_for(resource) 
  #  dashboard_path 
  #end  
end