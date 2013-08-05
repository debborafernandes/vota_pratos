class QualificacoesController < ApplicationController
  respond_to :html, :json
  before_filter :get_qualificacao, only: [:show, :edit, :update, :destroy]

  def get_qualificacao
    @qualificacao = Qualificacao.find(params[:id])
  end


  def index
    @qualificacoes = Qualificacao.all
    respond_with @qualificacoes
  end


  def show
    respond_with @qualificacao
  end


  def new
    @qualificacao = Qualificacao.new
    respond_with @qualificacao
  end


  def edit
  end


  def create
    @qualificacao = Qualificacao.new(params[:qualificacao])

    respond_to do |format|
      if @qualificacao.save
        format.html { redirect_to @qualificacao, notice: 'Qualificacao was successfully created.' }
        format.json { render json: @qualificacao, status: :created, location: @qualificacao }
      else
        format.html { render action: "new" }
        format.json { render json: @qualificacao.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @qualificacao.update_attributes(params[:qualificacao])
        format.html { redirect_to @qualificacao, notice: 'Qualificacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qualificacao.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @qualificacao.destroy

    respond_to do |format|
      format.html { redirect_to qualificacoes_url }
      format.json { head :no_content }
    end
  end
end
