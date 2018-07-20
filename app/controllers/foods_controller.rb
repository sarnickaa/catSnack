# frozen_string_literal: true

class FoodsController < ProtectedController
  before_action :set_food, only: %i[show update destroy]

  # GET /foods
  def index
    # require 'pry'
    # binding.pry
    # @foods = current_user.pets.all.map(&:foods)
    # @pets = current_user.pets.all
    @foods = Food.all.where(pet_id: current_user.pets.map(&:id))


    # @foods = current_user.pets.foods

    # current_user.pets.all.foods.all
    # Food.where(current_user.pets(id))

    render json: @foods
  end

  # GET /foods/1
  def show
    render json: @food
  end

  # POST /foods
  def create
    @food = Food.new(food_params)
    # @food = current_user.pets.find(params[:pet_id]).foods.build(food_params)

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
    @food = Food.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def food_params
    params.require(:food).permit(:brand_name, :main_ingredient, :secondary_ingredient, :pet_id, :score).reject { |_, v| v.blank? }
  end
end
