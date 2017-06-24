json.extract! coin, :id, :name, :symbol, :erc20, :created_at, :updated_at
json.url coin_url(coin, format: :json)
