class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.datetime :expires_at, null: false
      t.decimal :price, precision: 10, scale: 2, null: false

      t.integer :user_id, foreing_key: true, index: true
      t.integer :purchasable_id, null: false
      t.string :purchasable_type, null: false
      t.boolean :active, default: true

      t.timestamps
    end

    add_index :purchases, [:user_id, :purchasable_id, :active], :unique => true
  end
end
