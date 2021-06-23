Rails.application.routes.draw do
  devise_for :users
  root to: 'homepages#homepage'

  resources :ppts do
    member do
      get :description
      get :first_page
    end
  end

  resources :ppts, only: [:new, :create, :show, :destroy] do
    resources :teamones, only: [:create, :destroy] do
      resources :playerones, only: [:create, :destroy]
    end
    resources :teamtwos, only: [:create, :destroy] do
      resources :playertwos, only: [:create, :destroy]
    end
  end
end
