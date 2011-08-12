class DashboardController < ApplicationController
  before_filter :authenticate_user!  
  
  def index
    @identity_map = current_user.flatten_identities
  end
end
