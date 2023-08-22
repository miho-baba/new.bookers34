Rails.application.routes.draw do
devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'homes#top'

get 'homes/about' => 'homes#about'

get 'homes' => 'homes#index'

get 'homes/index' => 'homes#edit'

get 'homes/edit' => 'homes#show'

get 'users' => 'users#index'

resources :books
resources :users, only: [:show, :edit]

end
