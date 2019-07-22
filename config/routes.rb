Rails.application.routes.draw do
  devise_for :users
  resources :diaries

  authenticated :user do
	  root "diaries#index", as: "authenticated_root" 
  end
  root 'home#index'

delete "diaries/:id", to: "diaries#destroy"

end 
