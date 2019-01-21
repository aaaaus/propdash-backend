class Api::V1::LeasesController < ApplicationController

  def index
    @leases = Lease.all
    render json: @leases
  end

  def show
    @lease = Lease.find(params[:id])
    render json: @lease
  end

  def create
    @lease = Lease.create(lease_params)
    if @lease.valid?
      render json: @lease, status: :ok
    else
      render json: @lease.errors.full_messages, status: :not_acceptable
    end
  end

  def update
    @lease = Lease.find_by(id: params[:id])
    @lease.update(lease_params)
    render json: @lease, status: :ok
  end

  private

  def lease_params
    params.require(:lease).permit(:unit_id, :start_date, :end_date, :rent, :status, :account_balance, :in_legal)
  end

end
