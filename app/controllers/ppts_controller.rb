class PptsController < ApplicationController
  def new
    @ppt = Ppt.new
  end

  def create
    @ppt = Ppt.new(ppt_params)
    @ppt.user = current_user
    if @ppt.save
      redirect_to ppt_path(@ppt)
    else
      render :new
    end
  end

  def show
    @ppt = Ppt.find(params[:id])
    @ppt_up = @ppt.name.upcase

    @teamone = Teamone.new
    @teamtwo = Teamtwo.new
  end

  def description
    @ppt = Ppt.find(params[:id])
    @ppt_up = @ppt.name.upcase
    @teamone_name = @ppt.teamone.name.upcase
    @teamtwo_name = @ppt.teamtwo.name.upcase
    @teamtwo = @ppt.teamtwo
    @teamone = @ppt.teamone
    @playerone = Playerone.new
    @playertwo = Playertwo.new
    @playerones = @teamone.playerones
    @playertwos = @teamtwo.playertwos
  end

  def first_page
    @ppt = Ppt.find(params[:id])
  end

  private

  def ppt_params
    params.require(:ppt).permit(:name)
  end
end
