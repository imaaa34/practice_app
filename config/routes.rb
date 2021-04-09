Rails.application.routes.draw do
  get 'items/new'
  get 'new_posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'show' => 'items#show'
  post 'items' => 'items#create'
  post 'new_posts' => 'new_posts#create'
  get 'new_posts' => 'new_posts#index'
  get 'new_posts/:id' => 'new_posts#detail', as: 'new_post'
  get 'new_posts/:id/edit' => 'new_posts#edit', as: 'edit_new_post'
  patch 'new_posts/:id' => 'new_posts#update', as: 'update_new_post'
  delete 'new_posts/:id' => 'new_posts#destroy', as: 'destroy_new_post'

end