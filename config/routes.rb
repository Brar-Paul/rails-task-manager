Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET ALL TASKS
  get 'tasks', to: 'tasks#index', as: :tasks
  # FORM FOR NEW TASK
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # CREATE NEW TASK FROM FORM
  post 'tasks', to: 'tasks#create'
  # TASK INFO PAGE
  get 'tasks/:id', to: 'tasks#show', as: :task
  # FORM FOR EDITING
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # PATCH UPDATED TASK
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE TASK
  delete 'tasks/:id', to: 'tasks#destroy'
end
