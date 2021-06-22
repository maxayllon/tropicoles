class TeamtwosController < ApplicationController
  def create
    @ppt = Ppt.find(params[:ppt_id])
    @teamtwo = Teamtwo.new(teamtwo_params)
    @teamtwo.ppt = @ppt
    @teamtwo.save
  end

  private

  def teamtwo_params
    params.require(:teamtwo).permit(:name)
  end
end
