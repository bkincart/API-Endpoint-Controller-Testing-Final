class Api::V1::CampersController < ApplicationController
  def index
    render json: Camper.all, adapter: :json
  end
end
