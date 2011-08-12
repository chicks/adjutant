Adjutant::Application.routes.draw do
  resource :identities
  match '/identities/:id/sync', :to => "identities#sync", :as => "sync_identities"
  devise_for :users, :controllers => { :sessions => "sessions", :registrations => "registrations", :passwords => "passwords" }
  match '/dashboard' => "dashboard#index"
  root :to => 'homepage#index'
end
