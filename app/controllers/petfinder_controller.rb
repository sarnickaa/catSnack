class PetfinderController < ApplicationController
  def index
    @shelters = Petfinder.new(params[:location]).shelters
    render json: @shelters, status: :ok
  rescue StandardError => e
    render json: { errors: e.message }, status: :unprocessable_entity
  end
# end

# def index
   # new Petfinder object
  #   @petFinder = Petfinder.new
  #   # now get shelters from @petFinder:
  #   @shelters = @petFinder.shelters('02906')
  #   render json: @shelters, status: :ok
  # rescue StandardError => e
  #   render json: { errors: e.message }, status: :unprocessable_entity
  # end
end
