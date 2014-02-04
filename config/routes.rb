Popcode::Application.routes.draw do
  get 'contact_us' => 'contacts#new', as: :contact_us
  resources :contacts
  root 'pages#index'
end
