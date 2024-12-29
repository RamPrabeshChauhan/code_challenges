Rails.application.routes.draw do
  root to: 'web_view#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :challenges, only: %i[index show create update destroy]
    end
  end
end
