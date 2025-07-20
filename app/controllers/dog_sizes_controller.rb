class DogSizesController < ApplicationController
  before_action :set_dog_size, only: %i[ show edit update destroy ]

  def index
    @dog_sizes = DogSize.all
  end

  def show
    redirect_to dog_size_breeds_path(params[:id])
  end

  def new
    @dog_size = DogSize.new
  end

  def edit; end

  def create
    @dog_size = DogSize.new(dog_size_params)

    respond_to do |format|
      if @dog_size.save
        format.html { redirect_to @dog_size, notice: "Dog size was successfully created." }
        format.json { render :show, status: :created, location: @dog_size }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dog_size.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dog_size.update(dog_size_params)
        format.html { redirect_to @dog_size, notice: "Dog size was successfully updated." }
        format.json { render :show, status: :ok, location: @dog_size }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dog_size.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dog_size.destroy

    respond_to do |format|
      format.html { redirect_to dog_sizes_path, status: :see_other, notice: "Dog size was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_dog_size
      @dog_size = DogSize.find(params[:id])
    end

    def dog_size_params
      params.require(:dog_size).permit(:size, :description, :image)
    end
end
