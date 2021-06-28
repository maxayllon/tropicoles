Rails.application.routes.draw do
  devise_for :users
  root to: 'homepages#homepage'

  resources :ppts do
    member do
      get :description
      get :a_first_page
      get :b_rules
      get :c_kick_off
      get :d_number
      get :e_auction
      get :f_challenge
      get :g_rap_contenders
      get :h_picture_contest
      get :i_guess_theme
      get :j_half_time
      get :k_return
      get :l_russian_roulette
      get :m_millionaire
      get :n_music
      get :o_second_half
      get :p_one_or_other
      get :q_backs
      get :r_song_rally
      get :s_end
    end
  end

  resources :playerones, only: [:destroy]
  resources :playertwos, only: [:destroy]

  resources :ppts, only: [:index, :new, :create, :show, :destroy] do
    resources :teamones, only: [:create, :destroy] do
      resources :playerones, only: [:create]
    end
    resources :teamtwos, only: [:create, :destroy] do
      resources :playertwos, only: [:create]
    end
  end
end
