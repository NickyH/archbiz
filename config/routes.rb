Archbiz_app::Application.routes.draw do

root :to => 'home#index'

#pages
get '/about' => 'pages#about'
get '/inspiration' => 'pages#inspiration'
get '/projects' => 'pages#projects'

resources :inquiries, :only => [:new] do
  get 'thank_you', :on => :collection
end

get '/inquiries' => 'inquiries#create'

end
