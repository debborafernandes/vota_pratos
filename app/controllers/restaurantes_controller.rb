class RestaurantesController < ApplicationController

	before_filter :get_restaurante, only: [:edit, :update, :show, :destroy]


	def index
		@restaurantes = Restaurante.order :nome
	end

	def new
		@restaurante = Restaurante.new
	end

	def create
		@restaurante = Restaurante.new(params[:restaurante])
		respond_to do |format|
			format.html { redirect_to restaurantes_path } if @restaurante.save
			format.html { render :new } unless @restaurante.save
		end
	end

	def edit
	end

	def update
		if @restaurante.update_attributes(params[:restaurante])
			render :show
		else
			render :edit
		end
	end

	def show
	end

	def destroy
		@restaurante.destroy
		redirect_to :index
	end

	def get_restaurante
		@restaurante = Restaurante.find(params[:id])
	end
end
