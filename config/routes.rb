Rails.application.routes.draw do
  devise_for :users,  :controllers => { :registrations => "registrations" }
  root :to => "professor#index"
  get 'professor/new' => 'professor#new'
  post 'questions' => 'professor#create'

  resources :users ,only: [:show]
end
