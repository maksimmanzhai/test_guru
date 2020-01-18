Rails.application.routes.draw do
  root 'tests#index'

  get :signup, to: 'users#new'
  get :login, to: 'sessions#new'

  resources :users, only: :create
  resources :sessions, only: :create

  resources :tests do
    resources :questions, shallow: true, except: %i[index] do
      resources :answers, shallow: true, except: %i[index]
    end
    member do
      post :start
    end
  end

  resources :completed_tests, only: %i[show update] do
    member do
      get :result
    end
  end

end
