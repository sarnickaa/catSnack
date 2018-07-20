class PetsController < ProtectedController
  before_action :set_pet, only: [:show, :update, :destroy]
  # before a method is even run - a pet variable is set up using the
  # set_pet method for the following methods: show, update, destroy
  # before_action :authenticate_user!

  # GET /pets
  def index
    @pets = current_user.pets
    # Pet.all

    render json: @pets
  end

  # GET /pets/1
  def show
    render json: @pet
  end

  # POST /pets
  def create
    @pet = current_user.pets.build(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pet_params
      params.require(:pet).permit(:name, :age, :user_id).reject { |_, v| v.blank? }
      # SO answer
    end
end
