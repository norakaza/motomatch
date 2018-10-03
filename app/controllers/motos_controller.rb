class MotosController < ApplicationController
  def show
    @moto = Moto.find(params[:id])
  end

  def index
    @motos = Moto.all
    if params[:query].present?
      sql_query = " \
      motos.brand LIKE :query \
      OR motos.name LIKE :query \
    "
    @motos = @motos.where(sql_query, query: "%#{params[:query]}%")
    else
      @motos = Moto.all
    end
  end
end
