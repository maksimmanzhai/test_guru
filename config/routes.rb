Rails.application.routes.draw do

  root 'tests#index'

  devise_for :users, path: :gurus, path_names: { sign_in: :login, sign_out: :logout }

  resources :tests, only: :index do
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

  namespace :admin do
    resources :tests
  end

end
