class ContextsController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @contexts = current_user.contexts
    respond_to do |format|
      format.html # index.html.erb
      format.json { 
        render json: @contexts
      }
    end
  end
end