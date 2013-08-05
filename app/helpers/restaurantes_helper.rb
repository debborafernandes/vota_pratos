module RestaurantesHelper

	def restaurantes
		Restaurante.order(:nome).map{|c| [c.nome, c.id]}
	end
end
