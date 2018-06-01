Rails.application.routes.draw do
  namespace :podcast do
    root to: "pages#home"
    resources :episodes
    resources :series
  end
end
