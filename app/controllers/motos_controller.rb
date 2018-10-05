class MotosController < ApplicationController
  def show
    @moto = Moto.find(params[:id])
  end

  def index
    @motos = Moto.all
    if params[:query].present?
      sql_query = " \
      motos.brand LIKE :query \
      OR motos.model LIKE :query \
      OR motos.moto_type LIKE :query\
    "
    @motos = @motos.where(sql_query, query: "%#{params[:query]}%")
    else
      @motos = Moto.all
    end
  end

  def motos_params
  params.require(:moto).permit(:name, :model, :photo, :moto_type)
end
end
