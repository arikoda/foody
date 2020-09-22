Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'foods#index'
  resources :foods, only: [:index, :edit,:new, :create, :show, :destroy]
  get 'foods', to: 'foods#food_index'
end
