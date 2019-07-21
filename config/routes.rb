Rails.application.routes.draw do
  root 'diaries#index'


resources :diaries
delete "diaries/:id", to: "diaries#destroy"

end 
