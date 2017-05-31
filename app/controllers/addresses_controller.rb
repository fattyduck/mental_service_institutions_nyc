class AddressesController < ApplicationController
  def index
    render json: Address.all
  end

  def show
    render json: Address.find_by(id: params[:id])
  end
end
