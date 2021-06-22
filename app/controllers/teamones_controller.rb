class TeamonesController < ApplicationController
  def create
    @ppt = Ppt.find(params[:ppt_id])
    @teamone = Teamone.new(teamone_params)
    @teamone.ppt = @ppt
    @teamone.save
  end

  private

  def teamone_params
    params.require(:teamone).permit(:name)
  end
end
