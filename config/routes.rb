VotaPratos::Application.routes.draw do
	match 'inicio' => 'restaurantes#index'


  resources :clientes
  resources :eventos
  resources :qualificacoes
  resources :restaurantes

end
