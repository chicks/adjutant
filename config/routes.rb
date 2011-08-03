Adjutant::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "login" }
  root :to => 'home#index'
end
