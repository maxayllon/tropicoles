class TeamonesController < ApplicationController
  def create
    @ppt = Ppt.find(params[:ppt_id])
    @teamone = Teamone.new(teamone_params)
    @teamone.ppt = @ppt
    @teamone.save
    redirect_to ppt_path(@ppt)

  end

  def update
    @teamone = Teamone.find(params[:id])
    @teamone.update(teamone_params)
  end

  def destroy
    @ppt = Ppt.find(params[:id])
    @teamone = Teamone.find(params[:ppt_id])
    @teamone.destroy
    redirect_to ppt_path(@ppt)
  end

  private

  def teamone_params
    params.require(:teamone).permit(:name)
  end
end
