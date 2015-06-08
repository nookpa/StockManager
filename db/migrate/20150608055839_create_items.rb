class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :code_name
      t.datetime :sale_date
      t.decimal :sale_price
      t.text :type
      t.text :status
      t.integer :user_id
      t.integer :member_id
      t.integer :product_id
      t.text :remark

      t.timestamps null: false
    end
  end
end
