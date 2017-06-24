class CreateRecordedPrices < ActiveRecord::Migration[5.1]
  def change
    create_table :recorded_prices do |t|
      t.integer :coin_id
      t.string :rank
      t.string :usd
      t.string :btc
      t.string :eth
      t.string :pct_1h
      t.string :pct_24h
      t.string :pct_7d
      t.string :vol_24h
      t.string :market_cap
      t.string :last_updated

      t.timestamps
    end

    add_index :recorded_prices, :coin_id
    add_index :recorded_prices, :created_at
  end
end
