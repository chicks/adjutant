class IdentitiesController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @identity = Identity.new
    @identity_provider = IdentityProvider.new
    @identity_providers = [["Add New", "0"]]
    #@contexts = [["Add New", "0"]]
    #Context.for(current_user).collect { |c| @contexts << [c.name, c.id] }
    IdentityProvider.for(current_user).collect { |ip| @identity_providers << [ip.name, ip.id] }
  end
  
  def sync
    @identity = Identity.find(params[:id])
    @password = current_user.decrypted_password
    Resque.enqueue(Identity, @identity.id, @password)
    render :text => "Queued #{@identity.provider} password sync: #{@identity.user_name} / #{@password}."
  end
  
end
