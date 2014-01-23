class WowUpgradesController < ApplicationController
  before_action :set_wow_upgrade, only: [:show, :edit, :update, :destroy]

  # GET /wow_upgrades
  # GET /wow_upgrades.json
  def index
    @wow_upgrades = WowUpgrade.all
  end

  # GET /wow_upgrades/1
  # GET /wow_upgrades/1.json
  def show
  end

  # GET /wow_upgrades/new
  def new
    @wow_upgrade = WowUpgrade.new
  end

  # GET /wow_upgrades/1/edit
  def edit
  end

  # POST /wow_upgrades
  # POST /wow_upgrades.json
  def create
    @wow_upgrade = WowUpgrade.new(wow_upgrade_params)

    respond_to do |format|
      if @wow_upgrade.save
        format.html { redirect_to @wow_upgrade, notice: 'Wow upgrade was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wow_upgrade }
      else
        format.html { render action: 'new' }
        format.json { render json: @wow_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wow_upgrades/1
  # PATCH/PUT /wow_upgrades/1.json
  def update
    respond_to do |format|
      if @wow_upgrade.update(wow_upgrade_params)
        format.html { redirect_to @wow_upgrade, notice: 'Wow upgrade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wow_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wow_upgrades/1
  # DELETE /wow_upgrades/1.json
  def destroy
    @wow_upgrade.destroy
    respond_to do |format|
      format.html { redirect_to wow_upgrades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wow_upgrade
      @wow_upgrade = WowUpgrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wow_upgrade_params
      params.require(:wow_upgrade).permit(:building_id, :type)
    end
end
