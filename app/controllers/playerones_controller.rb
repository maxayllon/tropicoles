class PlayeronesController < ApplicationController
  def create
    @ppt = Ppt.find(params[:ppt_id])
    @teamone = Teamone.find(params[:teamone_id])
    @playerone = Playerone.new(playerone_params)
    @playerone.teamone = @ppt.teamone
    @playerone.save
  end

  private

  def playerone_params
    params.require(:playerone).permit(:name)
  end
end
