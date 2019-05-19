Rails.application.routes.draw do
  get 'post/create'

  get 'post/store'
  
  get 'home/index'

  post 'post/store'

  root 'home#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
