class HomepageController < ApplicationController
  layout "unauthenticated"
  
  def index
    if user_signed_in?
      redirect_to dashboard_path 
    end
  end
end
