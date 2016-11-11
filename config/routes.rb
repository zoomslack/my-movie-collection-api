Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/', to: 'welcome#index'
 resources :users, path: '/api/users', only: [:create, :show]
 resources :books, path: '/api/books', only: [:create, :show, :update, :index, :destroy];
end
