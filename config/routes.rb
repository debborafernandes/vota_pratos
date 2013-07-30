VotaPratos::Application.routes.draw do
  match 'inicio' => 'restaurantes#index'

  resources :eventos
  resources :restaurantes

end
