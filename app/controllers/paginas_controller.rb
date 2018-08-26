class PaginasController < ApplicationController
  before_action :set_pagina, only: [:show, :update, :destroy]

  # GET /paginas
  def index
    @paginas = Pagina.all

    render json: @paginas
  end

  # GET /paginas/1
  def show
    render json: @pagina
  end

  # POST /paginas
  def create
    @pagina = Pagina.new(pagina_params)

    if @pagina.save
      render json: @pagina, status: :created, location: @pagina
    else
      render json: @pagina.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paginas/1
  def update
    if @pagina.update(pagina_params)
      render json: @pagina
    else
      render json: @pagina.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paginas/1
  def destroy
    @pagina.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagina
      @pagina = Pagina.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pagina_params
      params.require(:pagina).permit(:titulo, :ruta, :subTitulo, :enunciado, :contenido, :icono, :color, :parametro_id)
    end
end
