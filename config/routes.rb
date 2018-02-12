Rails.application.routes.draw do
  get 'home/index'
  #Aqui nesta linha eu defini que a minha rota padrão é o controler 'home' e a ação é a index.
  root 'home#index'

  resources :phones
  resources :addresses
  resources :contacts
  resources :kinds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
