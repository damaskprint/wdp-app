Rails.application.routes.draw do
  root 'visits#index'
  resources :visits
end
