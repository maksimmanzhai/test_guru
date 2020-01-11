Rails.application.routes.draw do
  root 'tests#index'

  get '/author', :to => redirect('public/author.html')
  get '/about', :to => redirect('public/about.html')

  resources :tests do
    resources :questions, shallow: true
  end
end
