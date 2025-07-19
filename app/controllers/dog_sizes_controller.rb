class DogSizesController < ApplicationController
  before_action :set_dog_size, only: %i[ show edit update destroy ]

  # GET /dog_sizes or /dog_sizes.json
  def index
    @dog_sizes = DogSize.all
  end

  # GET /dog_sizes/1 or /dog_sizes/1.json
  def show
  end

  # GET /dog_sizes/new
  def new
    @dog_size = DogSize.new
  end

  # GET /dog_sizes/1/edit
  def edit
  end

  # POST /dog_sizes or /dog_sizes.json
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

  # PATCH/PUT /dog_sizes/1 or /dog_sizes/1.json
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

  # DELETE /dog_sizes/1 or /dog_sizes/1.json
  def destroy
    @dog_size.destroy

    respond_to do |format|
      format.html { redirect_to dog_sizes_path, status: :see_other, notice: "Dog size was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_size
      @dog_size = DogSize.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dog_size_params
      params.fetch(:dog_size, {})
    end
end
