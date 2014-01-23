class ShibeAttacksController < ApplicationController
  before_action :set_shibe_attack, only: [:show, :edit, :update, :destroy]

  # GET /shibe_attacks
  # GET /shibe_attacks.json
  def index
    @shibe_attacks = ShibeAttack.all
  end

  # GET /shibe_attacks/1
  # GET /shibe_attacks/1.json
  def show
  end

  # GET /shibe_attacks/new
  def new
    @shibe_attack = ShibeAttack.new
  end

  # GET /shibe_attacks/1/edit
  def edit
  end

  # POST /shibe_attacks
  # POST /shibe_attacks.json
  def create
    @shibe_attack = ShibeAttack.new(shibe_attack_params)

    respond_to do |format|
      if @shibe_attack.save
        format.html { redirect_to @shibe_attack, notice: 'Shibe attack was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shibe_attack }
      else
        format.html { render action: 'new' }
        format.json { render json: @shibe_attack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shibe_attacks/1
  # PATCH/PUT /shibe_attacks/1.json
  def update
    respond_to do |format|
      if @shibe_attack.update(shibe_attack_params)
        format.html { redirect_to @shibe_attack, notice: 'Shibe attack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shibe_attack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shibe_attacks/1
  # DELETE /shibe_attacks/1.json
  def destroy
    @shibe_attack.destroy
    respond_to do |format|
      format.html { redirect_to shibe_attacks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shibe_attack
      @shibe_attack = ShibeAttack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shibe_attack_params
      params.require(:shibe_attack).permit(:user_attacker_id, :user_attacked_id, :units_used, :units_destroyed, :damage_dealt)
    end
end
