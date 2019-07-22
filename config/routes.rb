Rails.application.routes.draw do
  devise_for :users
  root 'home#index'


resources :diaries
delete "diaries/:id", to: "diaries#destroy"

end 
