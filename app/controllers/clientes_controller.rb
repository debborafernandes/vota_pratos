class ClientesController < ApplicationController
  respond_to :html, :json
  before_filter :get_cliente, only: [:show, :edit, :update, :destroy]

  def get_cliente
    @cliente = Cliente.find(params[:id])
  end

  def index
    @clientes = Cliente.all

    respond_with @clientes
  end

  def show
    respond_with @clientes
  end

  def new
    @cliente = Cliente.new

    respond_with @clientes
  end

  def edit
  end

  def create
    @cliente = Cliente.new(params[:cliente])

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Cliente criado com sucesso.' }
        format.json { render json: @cliente, status: :created, location: @cliente }
      else
        format.html { render action: "new" }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cliente.update_attributes(params[:cliente])
        format.html { redirect_to @cliente, notice: 'Cliente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cliente.destroy

    respond_to do |format|
      format.html { redirect_to clientes_url }
      format.json { head :no_content }
    end
  end
end
