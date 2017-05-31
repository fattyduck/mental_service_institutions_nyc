class InstitutionsController < ApplicationController
  def index
    render json: Institution.all, each_serializer: InstitutionSerializer
  end

  def show
    render json: Institution.find_by(id: params[:id]), serializer: InstitutionsSerializer
  end
end
