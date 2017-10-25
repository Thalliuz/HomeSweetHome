Rails.application.routes.draw do
  root :to => 'welcome#index'
  get 'user/login'
  get 'welcome/index'
  resources :users, :owners, :apartments, :issues
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
