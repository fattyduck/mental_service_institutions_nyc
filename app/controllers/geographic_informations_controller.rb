class GeographicInformationsController < ApplicationController
  def index
    render json: GeographicInformation.all
  end

  def show
    render json: GeographicInformation.find_by(id: params[:id])
  end
end
