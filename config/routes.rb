Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "workers#index"

  get '/cities', to: 'workers#cities', as: 'cities'
  get '/languages', to: 'workers#languages', as: 'languages'
  get '/worker', to: 'workers#worker', as: 'worker'
  get '/salary', to: 'workers#salary', as: 'salary'
  get '/top_workers', to: 'workers#top_workers', as: 'top_workers'
end
