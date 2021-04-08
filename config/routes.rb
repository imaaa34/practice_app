Rails.application.routes.draw do
  get 'items/new'
  get 'new_posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'show' => 'items#show'
  post 'items' => 'items#create'
  post 'new_posts' => 'new_posts#create'

end