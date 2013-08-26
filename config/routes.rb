RecipezyV2::Application.routes.draw do

root :to => 'home#index'

resources :users, :tutorials, :ingredients
resources :recipes do
    collection do
      get :filter
      get :filterbytime
      post :add_item
    end
  end

resources :items, :only => [:index, :new, :create]

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

end
