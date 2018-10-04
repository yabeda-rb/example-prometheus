require "sidekiq/web"

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"

  post '/', to: "home#enqueue"
  root to: "home#index"
end
