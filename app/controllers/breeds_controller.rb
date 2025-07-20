class BreedsController < ApplicationController
  before_action :set_breed, only: %i[ update destroy ]
  before_action :set_dog_size, only: %i[ index ]

  def index
    @breeds = @dog_size.breeds
  end

  def show
    @breed = Breed.find(params[:id])
  end

  def new
    @dog_size = DogSize.find(params[:dog_size_id])
    @breed = @dog_size.breeds.build
  end

  def edit
    @breed = Breed.find(params[:id])
  end

  def create
    @dog_size = DogSize.find(params[:dog_size_id])
    @breed = @dog_size.breeds.build(breed_params)

    respond_to do |format|
      if @breed.save
        format.html { redirect_to @breed, notice: "Breed was successfully created." }
        format.json { render :show, status: :created, location: @breed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @breed.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @breed.update(breed_params)
        format.html { redirect_to @breed, notice: "Breed was successfully updated." }
        format.json { render :show, status: :ok, location: @breed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @breed.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @breed.destroy

    respond_to do |format|
      format.html { redirect_to dog_size_breeds_path(@breed.dog_size), notice: "Breed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breed
      @breed = Breed.find(params[:id])
      
    end

    def set_dog_size
      @dog_size = DogSize.find(params[:dog_size_id])
    end

    # Only allow a list of trusted parameters through.
    def breed_params
      params.require(:breed).permit(:name, :image)
    end
end
