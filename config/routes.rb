Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
    root to: 'pages#home'
    get 'about', to: 'pages#about'
    resources :contacts, only: :create
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
