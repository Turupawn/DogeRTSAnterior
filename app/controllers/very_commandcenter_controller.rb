class VeryCommandcenterController < ApplicationController

  def such_index
  end

  def wow_building_created
    @position=params[:position]
    @type=params[:type]
    b = VeryBuilding.new
    b.user_id = current_user.id
    b.type = @type
    b.position = @position
    b.hp = 100
    b.save
  end

end
