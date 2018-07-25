class PetfinderController < ApplicationController
  def index
    @shelters = Petfinder.new.shelters
    render json: @shelters, status: :ok
  rescue StandardError => e
    render json: { errors: e.message }, status: :unprocessable_entity
  end
end
