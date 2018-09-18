# frozen_string_literal: true

class FoodsController < ProtectedController
  before_action :set_food, only: %i[show update destroy]

  # GET /foods
  def index
    @foods = Food.all.where(pet_id: current_user.pets.map(&:id))
    # find all foods where the pet_id matches the current_users pet's id's
    # this finds only the foods belonging to a users pets
    render json: @foods
  end

  # GET /foods/1
  def show
    render json: @food
  end

  # POST /foods
  def create
    @pet = current_user.pets.find(food_params[:pet_id])
    @food = @pet.foods.build(food_params)
    # find users pets first using pet_id from food_params
    # build food resource based on the pets found

    if @food.save
      render json: @food, status: :created, location: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1
  def update
    if @food.update(food_params)
      render json: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  def destroy
    @food.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_food
    @foods = Food.all.where(pet_id: current_user.pets.map(&:id))
    # https://stackoverflow.com/questions/31607034/how-to-pass-key-as-an-argument-to-map-instead-of-a-block-with-ruby
    @food = @foods.find(params[:id])

  end

  # Only allow a trusted parameter "white list" through.
  def food_params
    params.require(:food).permit(:brand_name, :main_ingredient, :secondary_ingredient, :pet_id, :score).reject { |_, v| v.blank? }
    # https://stackoverflow.com/questions/24939971/how-to-remove-empty-parameters-from-params-hash/24940076
  end
end
