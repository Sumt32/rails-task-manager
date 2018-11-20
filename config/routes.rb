Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create', as: "post"

  get 'tasks/:id', to: 'tasks#show', as: "task"


  get 'tasks/:id/edit', to: 'tasks#edit', as: "edit_task"
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy', as: "destroy_task"
  # For details on the DSL available within thehis file, see http://guides.rubyonrails.org/routing.html
end
