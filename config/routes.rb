Rails.application.routes.draw do
  get 'cocktails/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
  delete '/doses/:id', to: 'doses#destroy', as: 'dose_destroy'
  resources :cocktails do
    resources :doses, only: [:create, :new]
  end
end
