class PptsController < ApplicationController
  def index
    @ppts = Ppt.all.select do |ppt|
      ppt.user == current_user
    end
  end

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

  def rules
    @ppt = Ppt.find(params[:id])
  end

  def kick_off
  end

  def number
    @ppt = Ppt.find(params[:id])
    @playerones =@ppt.teamone.playerones
    @playertwos =@ppt.teamtwo.playertwos
    @player_number = @playerones.count + @playertwos.count
    @numbers = [1, 8, 9, 10, 13, 15, 333, 666, 15, 100]
    @random_number = @numbers[0..(@player_number-1)]
  end

  def auction
  end

  def challenge
    @ppt = Ppt.find(params[:id])
  end

  def rap_contenders
    @ppt = Ppt.find(params[:id])
  end

  private

  def ppt_params
    params.require(:ppt).permit(:name, :photo)
  end
end
