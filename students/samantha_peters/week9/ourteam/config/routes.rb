Ourteam::Application.routes.draw do

  resources :people, :only => :index
  root 'people#index'
end
