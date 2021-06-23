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
    @ppt = Ppt.find(params[:id])
    @teamone = Teamone.find(params[:ppt_id])
    @teamone.destroy
    redirect_to ppt_path(@ppt)
  end

  private

  def playerone_params
    params.require(:playerone).permit(:name)
  end
end
