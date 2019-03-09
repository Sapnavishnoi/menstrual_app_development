Rails.application.routes.draw do
  resources :menstrual_cycles
  devise_for :users
  root to: "application#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
