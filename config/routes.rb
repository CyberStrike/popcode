Popcode::Application.routes.draw do
  root 'pages#index'
  get 'contact' => 'contact/contact'
end
