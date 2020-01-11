Rails.application.routes.draw do
  root 'tests#index'

  get '/author', :to => redirect('/author.html')
  get '/about', :to => redirect('/about.html')

  resources :tests do
    resources :questions, shallow: true
  end
end
