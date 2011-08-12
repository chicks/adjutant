class IdentitiesController < ApplicationController
  before_filter :authenticate_user!
  
  def sync
    @identity = Identity.find(params[:id])
    Resque.enqueue(Identity, @identity.id)
    render :text => "Added #{@identity.user_name} to sync queue."
  end
  
end
