class Api::V1::ResidentsController < ApplicationController

  def index
    @residents = Resident.all
    render json: @residents
  end

  def show
    @resident = Resident.find(params[:id])
    render json: @resident
  end

end
