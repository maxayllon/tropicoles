class PlayertwosController < ApplicationController
  def create
    @teamtwo = Teamtwo.find(params[:teamtwo_id])
    @ppt = @teamtwo.ppt_id
    @playertwo = Playertwo.new(playertwo_params)
    @playertwo.teamtwo = @teamtwo
    @playertwo.save
    redirect_to description_ppt_path(@ppt)
  end

  private

  def playertwo_params
    params.require(:playertwo).permit(:name)
  end
end
