class RecordedPrice < ApplicationRecord
  def self.fetch_prices
    begin
      Rails.logger.info { "Fetching prices from CoinMarketCap" }
      ticker_data = JSON.parse(RestClient.get('https://api.coinmarketcap.com/v1/ticker').body)
    rescue => e
      Rails.logger.error { "Error: #{e}" }
      raise "There was an error requesting ticker data. Error: #{e}"
    end

    price_attributes = []

    ticker_data.each do |coin_data|
      coin = Coin.find_or_create_by(
        name: coin_data["name"],
        symbol: coin_data["symbol"])

      current_coin_data = {
        coin_id: coin.id,
        rank: coin_data["rank"],
        usd: coin_data["price_usd"],
        btc: coin_data["price_btc"],
        pct_1h: coin_data["percent_change_1h"],
        pct_24h: coin_data["percent_change_24h"],
        pct_7d: coin_data["percent_change_7d"],
        vol_24h: coin_data["24h_volume_usd"],
        market_cap: coin_data["market_cap_usd"],
        last_updated: coin_data["last_updated"]
      }

      unless coin.recorded_prices.find_by(last_updated: coin_data["last_updated"]).present?
        price_attributes.push(current_coin_data)
      end
    end

    RecordedPrice.create!(price_attributes) unless price_attributes.empty?
  end
end
