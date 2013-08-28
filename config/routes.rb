Archbiz_app::Application.routes.draw do

root :to => 'home#index'

#pages
get '/about' => 'pages#about'
get '/inspiration' => 'pages#inspiration'

resources :inquiries, :only => [:new, :create] do
  get 'thank_you', :on => :collection
end

end
