class Api::V1::CampersController < ApplicationController
  def index
    render json: Camper.all, adapter: :json
  end

  def create
    data = JSON.parse(request.body.read)
    new_camper = Camper.create(name: data["name"], campsite_id: data["campsite_id"])
    render json: new_camper, adapter: :json
  end
end
