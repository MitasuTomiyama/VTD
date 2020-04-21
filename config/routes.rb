Rails.application.routes.draw do

  # 管理者のログイン•サインインをユーザー•アーティストと分ける
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  # 管理者側のtopページを指定
  devise_scope :admin do
    get '/admins/users/top' => 'admins/users#top'
  end

  # 管理者側のネスト
  namespace :admins do
    resources :artists, only: [:index, :show, :update, :destroy]
    resources :users, only: [:index, :show, :update, :destroy]
    resources :arts, only: [:index, :show, :update]
    resources :comments, only: [:destroy, :index]
  end

  # アーティスト側のログイン•サインインをユーザー•管理者と分ける
  devise_for :artists, controllers: {
    sessions: 'artists/sessions'
  }
  devise_scope :artists do
    get '/artists/top' => 'artists#top'
  end

  # ユーザー側のログイン•サインイン
  devise_for :users
  devise_scope :users do
    get '/users/top' => 'users#top'
  end
  
  # ユーザーのルーティング
  resources :users, only: [:index, :show, :update, :edit, :destroy] 

  # アーティストのルーティング
  resources :artists, only: [:index, :show, :update, :edit, :destroy]

  # アートのルーティング
  resources :arts

  # コメントのルーティング
  resources :comments, only: [:index, :create, :update, :destroy]

  # フェイバリットのルーティング
  resources :favorites, only: [:index, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
end
