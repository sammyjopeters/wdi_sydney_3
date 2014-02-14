MomaApp::Application.routes.draw do

  resources :artists do
    resources :paintings
  end

  resources :paintings

  root :to => 'artists#index'

end
