Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'

  # Create
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # Read
  # read all restaurants
  get '/tasks', to: 'tasks#index'

  # read only one restaurant
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete
  delete '/tasks/:id', to: 'tasks#destroy'
end
