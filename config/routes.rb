Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get 'users/username/:username', :to => 'users#show_by_username'
  post 'users/login_result', :to => 'users#login_result'
end
