RecipezyV2::Application.routes.draw do

root :to => 'home#index'

get '/contact' => 'contact#new'
post '/contact' => 'contact#create'

end
