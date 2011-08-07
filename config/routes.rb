Adjutant::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "login", :registrations => "signup" }
  root :to => 'homepage#index'
end
