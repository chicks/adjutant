class DashboardController < ApplicationController
  before_filter :authenticate_user!  
  
  def index
    @identity_map = current_user.flatten_identities
    # variables for populating an "add identity" form
    @identity = Identity.new
    @identity_provider = IdentityProvider.new
    @identity_providers = [["Add New", "0"]]
    #@contexts = [["Add New", "0"]]
    #Context.for(current_user).collect { |c| @contexts << [c.name, c.id] }
    IdentityProvider.for(current_user).collect { |ip| @identity_providers << [ip.name, ip.id] }
  end
  
end
