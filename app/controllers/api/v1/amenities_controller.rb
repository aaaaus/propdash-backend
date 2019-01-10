class Api::V1::AmenitiesController < ApplicationController

  def index
    @amenities = Amenity.all
    render json: @amenities
  end

  def show
    @amenity = Amenity.find(params[:id])
    render json: @amenity
  end

end
