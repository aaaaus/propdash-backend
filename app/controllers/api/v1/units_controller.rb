class Api::V1::UnitsController < ApplicationController

  before_action :find_unit, only: [:show, :update]

  def index
    @units = Unit.all
    render json: @units
  end

  def show
    # @unit = Unit.find_by(id: params[:id])
    render json: @unit
  end

  def update
    # @unit = Unit.find_by(id: params[:id])
    @unit.update(unit_params)
    render json: @unit, status: :ok
  end

  private

  def unit_params
    params.permit(:status) #as of now, status is the only param being patched
  end

  def find_unit
    @unit = Unit.find_by(id: params[:id])
  end

end
