class PetfinderController < ApplicationController
  def index
    @shelters = Petfinder.new(params[:location]).shelters
    render json: @shelters, status: :ok
  rescue StandardError => e
    render json: { errors: e.message }, status: :unprocessable_entity
  end
end

# pet_finders_controller.rb


# Dannys code:
# class PetFindersController < ApplicationController
#
# # if you need just shelters, you should probably setup another controller action to just return shelters, so you have an #index method and a #shelters method on this controller
# # this will require an additional route to access the shelters
#
#   def index
#     @pet_finders = Petfinder.all # index action expects to return all of a resource
#     # rest of index code
#   end
#
#   def shelters
#     @shelters = PetFinder.shelters
#
#     render json: @shelters, status: :ok
#   rescue StandardError => e
#     render json: { errors: e.message }, status: :unprocessable_entity
#   end
