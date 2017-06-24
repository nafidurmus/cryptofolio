class CreateCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :coins do |t|
      t.string :name
      t.string :symbol
      t.boolean :erc20

      t.timestamps
    end

    add_index :coins, :created_at
  end
end
