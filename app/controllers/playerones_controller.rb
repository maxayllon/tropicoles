class PlayeronesController < ApplicationController
  def create
    @ppt = Ppt.find(params[:ppt_id])
    @teamone = Teamone.find(params[:teamone_id])
    @playerone = Playerone.new(playerone_params)
    @playerone.teamone = @ppt.teamone
    @playerone.save
    redirect_to description_ppt_path(@ppt)
  end

  def destroy
    @playerone = Playerone.find(params[:id])
    @playerone.destroy
    @ppt = @playerone.teamone.ppt
    redirect_to description_ppt_path(@ppt)
  end

  private

  def playerone_params
    params.require(:playerone).permit(:name)
  end
end
