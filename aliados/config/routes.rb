Rails.application.routes.draw do
  resources :incidences
  resources :reports
  devise_for :partners
  devise_for :administrators
  get '/surveys', to: 'survey#surveys', as: 'survey'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"
end
