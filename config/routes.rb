Rails.application.routes.draw do
  scope :admin do
    namespace :podcast do
      root to: "pages#home"
      resources :series do
        resources :episodes
      end
    end
  end
end
