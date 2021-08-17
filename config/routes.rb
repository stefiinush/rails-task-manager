Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # to read all tasks
  get "tasks", to: "tasks#index"
  # to add a new task
  get "tasks/new" ,to: "tasks#new" #, as: :new_task
  # to post the new task
  post "tasks", to: "tasks#create"
  # to read one task
  get "tasks/:id", to: "tasks#show", as: :task
  # to edit a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # to update a task
  patch "tasks/:id", to: "tasks#update"
  # to delete a task
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task

end
