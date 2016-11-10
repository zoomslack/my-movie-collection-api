Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/', to: 'welcome#index'
 resources :users, only:[:create, :show, :destroy]
 resources :books, only:[:create, :show, :update, :index, :destroy];
end
