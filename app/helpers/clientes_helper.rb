module ClientesHelper

	def clientes
		Cliente.order(:nome).map{|c| [c.nome, c.id]}
	end
end
