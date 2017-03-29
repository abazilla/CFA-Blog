Rails.application.routes.draw do
  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"


  resources :posts do
    member do
      resources :comments
    end
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root 'posts#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
