class CoinsController < ApplicationController

  def index
    @coins = Coin.eager_load(:recorded_prices).all
  end

  def schedule_price_worker
    begin
      FetchPriceWorker.perform_async
      render json: {success: true}, status: 200
    rescue => e
      render json: {success: false, error: e}, status: 503
    end
  end

end
