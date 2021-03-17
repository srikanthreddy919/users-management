Rails.application.routes.draw do
  devise_for :admins, only: [:sessions], controllers: { sessions: "sessions" }, defaults: { format: :json }
  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :users
    end
  end
end
