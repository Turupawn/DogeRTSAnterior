class MuchWithdrawsController < ApplicationController
  before_action :set_much_withdraw, only: [:show, :edit, :update, :destroy]

  # GET /much_withdraws
  # GET /much_withdraws.json
  def index
    @much_withdraws = MuchWithdraw.all
  end

  # GET /much_withdraws/1
  # GET /much_withdraws/1.json
  def show
  end

  # GET /much_withdraws/new
  def new
    @much_withdraw = MuchWithdraw.new
  end

  # GET /much_withdraws/1/edit
  def edit
  end

  # POST /much_withdraws
  # POST /much_withdraws.json
  def create
    @much_withdraw = MuchWithdraw.new(much_withdraw_params)

    respond_to do |format|
      if @much_withdraw.save
        format.html { redirect_to @much_withdraw, notice: 'Much withdraw was successfully created.' }
        format.json { render action: 'show', status: :created, location: @much_withdraw }
      else
        format.html { render action: 'new' }
        format.json { render json: @much_withdraw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /much_withdraws/1
  # PATCH/PUT /much_withdraws/1.json
  def update
    respond_to do |format|
      if @much_withdraw.update(much_withdraw_params)
        format.html { redirect_to @much_withdraw, notice: 'Much withdraw was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @much_withdraw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /much_withdraws/1
  # DELETE /much_withdraws/1.json
  def destroy
    @much_withdraw.destroy
    respond_to do |format|
      format.html { redirect_to much_withdraws_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_much_withdraw
      @much_withdraw = MuchWithdraw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def much_withdraw_params
      params.require(:much_withdraw).permit(:building_id, :timestamp, :amount)
    end
end
