  Rails.application.routes.draw do
    get   'tweets'      =>  'tweets#index'     #ツイート一覧画面
    get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
  end