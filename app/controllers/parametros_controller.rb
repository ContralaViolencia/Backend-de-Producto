class ParametrosController < ApplicationController
  before_action :set_parametro, only: [:show, :update, :destroy]

  # GET /parametros
  def index
    @parametros = Parametro.all

    render json: @parametros
  end

  # GET /parametros/1
  def show
    render json: @parametro
  end

  # POST /parametros
  def create
    @parametro = Parametro.new(parametro_params)

    if @parametro.save
      render json: @parametro, status: :created, location: @parametro
    else
      render json: @parametro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parametros/1
  def update
    if @parametro.update(parametro_params)
      render json: @parametro
    else
      render json: @parametro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parametros/1
  def destroy
    @parametro.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parametro
      @parametro = Parametro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parametro_params
      params.require(:parametro).permit(:tipo, :nombre, :pertenece, :activo)
    end
end
