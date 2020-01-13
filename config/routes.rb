Rails.application.routes.draw do
  root to: 'animals#index'
resources :animals do
resources :regions
resources :regions, except: [:destroy]
resources :regions, only: [:index]

end
end
