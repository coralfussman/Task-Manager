Rails.application.routes.draw do
  resources :labels
  resources :label_tasks
  resources :tasks
  resources :projects
  resources :members
  resources :teams
  resources :member_teams

  get '/', to: 'home_pages#home', as: "home_page"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
