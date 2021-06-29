class PptsController < ApplicationController
  before_action :find_ppt, only: [:show, :destroy, :description, :a_first_page, :b_rules, :c_kick_off, :d_number, :e_auction, :f_challenge, :g_rap_contenders, :h_picture_contest, :i_guess_theme, :j_half_time, :k_return, :l_russian_roulette, :m_millionaire, :n_music, :o_second_half, :p_one_or_other, :q_backs, :r_song_rally, :s_end]

  before_action :counter, only: []

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
    @ppt_up = @ppt.name.upcase

    @teamone = Teamone.new
    @teamtwo = Teamtwo.new
  end

  def description
    @ppt_up = @ppt.name.upcase
    @teamone_name = @ppt.teamone.name.upcase
    @teamtwo_name = @ppt.teamtwo.name.upcase
    @playerone = Playerone.new
    @playertwo = Playertwo.new
    @playerones = @teamone.playerones
    @playertwos = @teamtwo.playertwos
  end

  def a_first_page
  end

  def b_rules
  end

  def c_kick_off
  end

  def d_number
    @playerones = @ppt.teamone.playerones
    @playertwos = @ppt.teamtwo.playertwos
    @player_number = @playerones.count + @playertwos.count
    @numbers = [1, 8, 9, 10, 13, 15, 333, 666, 15, 100].shuffle
    @random_number = @numbers[0..(@player_number - 1)]
  end

  def e_auction
  end

  def f_challenge
  end

  def g_rap_contenders
  end

  def h_picture_contest
    @themes = [1, 2, 3, 4, 5, 6].shuffle
    @theme = @themes[0]
  end

  def i_guess_theme
  end

  def j_half_time
  end

  def k_return
  end

  def l_russian_roulette
  end

  def m_millionaire
  end

  def n_music
  end

  def o_second_half
  end

  def p_one_or_other
  end

  def q_backs
  end

  def r_song_rally
  end

  def s_end
    if @teamone.point > @teamtwo.point
      @team_win = @teamone.name
    elsif @teamone.point == @teamtwo.point
      @team_win = "Egalité entre #{@teamone.name} et #{@teamtwo.name}"
    else
      @team_win =@teamtwo.name
    end
  end

  private

  def ppt_params
    params.require(:ppt).permit(:name, :photo)
  end

  def find_ppt
    @ppt = Ppt.find(params[:id])
    @teamone = @ppt.teamone
    @teamtwo = @ppt.teamtwo
  end

  def counter
    @teamone_counter = @ppt.teamone.point
    @teamtwo_counter = @ppt.teamone.point
  end
end
