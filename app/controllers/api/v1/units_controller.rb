class Api::V1::UnitsController < ApplicationController

  before_action :find_unit, only: [:show, :update]

  def index
    @units = Unit.all
    render json: @units
  end

  def show
    # @unit = Unit.find(params[:id])
    render json: @unit
  end

  def update
    @unit.update(unit_params)
    if @unit.save
      render json: @unit, status: :accepted
    else
      render json: { errors: @unit.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def unit_params
    params.permit(:title, :content)
  end

  def find_unit
    @unit = Unit.find(params[:id])
  end

end
