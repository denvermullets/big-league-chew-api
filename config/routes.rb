Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :leagues, only: [:create]
      # post '/league', to: 'leagues#create', as: :league_create

    end
  end
end
