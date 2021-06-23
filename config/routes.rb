Rails.application.routes.draw do
  devise_for :users
  root to: 'homepages#homepage'

  resources :ppts do
    member do
      get :description
      get :first_page
    end
  end

  resources :ppts, only: [:new, :create, :show, :update, :destroy] do
    resources :teamones, only: [:create, :update, :destroy] do
      resources :playerones, only: [:create, :update, :destroy]
    end
    resources :teamtwos, only: [:create, :update, :destroy] do
      resources :playertwos, only: [:create, :update, :destroy]
    end
  end
end
