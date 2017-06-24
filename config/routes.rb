Rails.application.routes.draw do
  get :ticker, controller: :coins, action: :index
  get :schedule_price_worker, controller: :coins, action: :schedule_price_worker
  root controller: :coins, action: :index
end
