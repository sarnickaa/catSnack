class PetsController < ProtectedController
  before_action :set_pet, only: [:show, :update, :destroy]
  # before_action :set_shelter, only: [:getShelters]
  # before a method is even run - a pet variable is set up using the
  # set_pet method for the following methods: show, update, destroy
  # set_pet:
  # @pet ||= current_user.pets.find(params[:id])
  # the id passed by the user for the pet MUST exist within the current_user collection of pets
  # ||= is ruby code pattern
  # ||=
  # a = a || b
  # a will initialie to b IF a is nil/false/undefined OTHERWISE a = a


  # GET /pets
  def index
    @pets = current_user.pets

    render json: @pets
  end

  # def getShelters
  #   @shelters = ??
  #   render json: @shelters
  # end

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

    @pet ||= current_user.pets.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pet_params
      params.require(:pet).permit(:name, :age, :user_id).reject { |_, v| v.blank? }
      # https://stackoverflow.com/questions/41472226/strange-behavior-with-underscore-in-ruby
      # ruby treats the _ as the value of the last calcualted expression i.e. the last key iterated over
      # https://stackoverflow.com/questions/24939971/how-to-remove-empty-parameters-from-params-hash/24940076
    end
end
