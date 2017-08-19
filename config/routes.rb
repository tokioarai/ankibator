  Rails.application.routes.draw do
  devise_for :users
    root  'anki#index'
    resources :anki do
      collection do
        post 'check'
      end
        resources :comments, only: [:create]
      end

    resources :users, only: [:show]
    resources :comments
    resources :corrects

  end

