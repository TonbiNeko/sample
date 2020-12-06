Rails.application.routes.draw do
  get '/contacts', to: 'contacts#new'
  get '/stocks', to: 'stocks#index'
  get '/blogs', to: 'blogs#index'
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
