Rails.application.routes.draw do
  devise_for :users
  root to: 'homepages#homepage'

  resources :ppts do
    member do
      get :description
      get :first_page
    end
  end

  resources :ppts, only: [:new, :create, :show] do
    resources :teamones, only: [:create] do
      resources :playerones, only: [:create]
    end
    resources :teamtwos, only: [:create] do
      resources :playertwos, only: [:create]
    end
  end
end
