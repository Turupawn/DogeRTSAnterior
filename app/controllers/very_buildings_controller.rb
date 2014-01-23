class VeryBuildingsController < ApplicationController
  before_action :set_very_building, only: [:show, :edit, :update, :destroy]

  # GET /very_buildings
  # GET /very_buildings.json
  def index
    @very_buildings = VeryBuilding.all
  end

  # GET /very_buildings/1
  # GET /very_buildings/1.json
  def show
  end

  # GET /very_buildings/new
  def new
    @very_building = VeryBuilding.new
  end

  # GET /very_buildings/1/edit
  def edit
  end

  # POST /very_buildings
  # POST /very_buildings.json
  def create
    @very_building = VeryBuilding.new(very_building_params)

    respond_to do |format|
      if @very_building.save
        format.html { redirect_to @very_building, notice: 'Very building was successfully created.' }
        format.json { render action: 'show', status: :created, location: @very_building }
      else
        format.html { render action: 'new' }
        format.json { render json: @very_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /very_buildings/1
  # PATCH/PUT /very_buildings/1.json
  def update
    respond_to do |format|
      if @very_building.update(very_building_params)
        format.html { redirect_to @very_building, notice: 'Very building was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @very_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /very_buildings/1
  # DELETE /very_buildings/1.json
  def destroy
    @very_building.destroy
    respond_to do |format|
      format.html { redirect_to very_buildings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_very_building
      @very_building = VeryBuilding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def very_building_params
      params.require(:very_building).permit(:user_id, :type, :position, :hp)
    end
end
