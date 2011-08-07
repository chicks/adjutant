Adjutant::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "sessions", :registrations => "registrations" }
  match '/dashboard' => "dashboard#index"
  root :to => 'homepage#index'
end
