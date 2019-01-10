class Api::V1::LeasesController < ApplicationController

  def index
    @leases = Lease.all
    render json: @leases
  end

  def show
    @lease = Lease.find(params[:id])
    render json: @lease
  end

end
