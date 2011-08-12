class IdentitiesController < ApplicationController
  before_filter :authenticate_user!
  
  def sync
    @identity = Identity.find(params[:id])
    @password = current_user.decrypted_password
    Resque.enqueue(Identity, @identity.id, @password)
    render :text => "Queued #{@identity.provider} password sync: #{@identity.user_name} / #{@password}."
  end
  
end
