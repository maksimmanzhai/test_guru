Rails.application.routes.draw do
  root 'tests#index'

  get './about', to: 'public#about'
  
  resources :tests do
    resources :questions, shallow: true
  end
end
