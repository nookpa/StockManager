class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.integer :user_id
      t.integer :member_id
      t.integer :amount
      t.text :color
      t.decimal :cost_price
      t.decimal :sale_price

      t.timestamps null: false
    end
  end
end
