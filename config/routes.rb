Rails.application.routes.draw do
  devise_for :users
  root to: 'homepages#homepage'

  resources :ppts do
    member do
      get :description
      get :first_page
    end
  end

  resources :ppts, only: [:new, :create, :show, :update] do
    resources :teamones, only: [:create, :update] do
      resources :playerones, only: [:create, :update]
    end
    resources :teamtwos, only: [:create, :update] do
      resources :playertwos, only: [:create, :update]
    end
  end
end
