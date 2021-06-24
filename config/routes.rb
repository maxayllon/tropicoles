Rails.application.routes.draw do
  devise_for :users
  root to: 'homepages#homepage'

  resources :ppts do
    member do
      get :description
      get :first_page
      get :rules
      get :kick_off
      get :number
      get :auction
      get :challenge
      get :rap_contenders
    end
  end

  resources :playerones, only: [:destroy]
  resources :playertwos, only: [:destroy]

  resources :ppts, only: [:index, :new, :create, :show, :destroy] do
    resources :teamones, only: [:create] do
      resources :playerones, only: [:create]
    end
    resources :teamtwos, only: [:create, :destroy] do
      resources :playertwos, only: [:create, :destroy]
    end
  end
end
