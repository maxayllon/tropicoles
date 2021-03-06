class TeamtwosController < ApplicationController
  def create
    @ppt = Ppt.find(params[:ppt_id])
    @teamtwo = Teamtwo.new(teamtwo_params)
    @teamtwo.ppt = @ppt
    @teamtwo.save
    redirect_to ppt_path(@ppt)
  end

  def update
    @ppt = Ppt.find(params[:ppt_id])
    @teamtwo = @ppt.teamtwo
    @teamtwo.update(teamtwo_params)
  end

  def destroy
    @ppt = Ppt.find(params[:id])
    @teamtwo = Teamtwo.find(params[:ppt_id])
    @teamtwo.destroy
    redirect_to ppt_path(@ppt)
  end

  private

  def teamtwo_params
    params.require(:teamtwo).permit(:name, :point)
  end
end
