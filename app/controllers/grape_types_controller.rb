class GrapeTypesController < ApplicationController
  before_action :set_grape_type, only: [:show, :edit, :update, :destroy]

  # GET /grape_types
  # GET /grape_types.json
  def index
    @grape_types = GrapeType.all
  end

  # GET /grape_types/1
  # GET /grape_types/1.json
  def show
  end

  # GET /grape_types/new
  def new
    @grape_type = GrapeType.new
  end

  # GET /grape_types/1/edit
  def edit
  end

  # POST /grape_types
  # POST /grape_types.json
  def create
    @grape_type = GrapeType.new(grape_type_params)

    respond_to do |format|
      if @grape_type.save
        format.html { redirect_to @grape_type, notice: 'Grape type was successfully created.' }
        format.json { render :show, status: :created, location: @grape_type }
      else
        format.html { render :new }
        format.json { render json: @grape_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grape_types/1
  # PATCH/PUT /grape_types/1.json
  def update
    respond_to do |format|
      if @grape_type.update(grape_type_params)
        format.html { redirect_to @grape_type, notice: 'Grape type was successfully updated.' }
        format.json { render :show, status: :ok, location: @grape_type }
      else
        format.html { render :edit }
        format.json { render json: @grape_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grape_types/1
  # DELETE /grape_types/1.json
  def destroy
    @grape_type.destroy
    respond_to do |format|
      format.html { redirect_to grape_types_url, notice: 'Grape type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grape_type
      @grape_type = GrapeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grape_type_params
      params.require(:grape_type).permit(:name, :active)
    end
end
