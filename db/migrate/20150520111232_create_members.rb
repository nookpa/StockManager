class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.text :first_name
      t.text :last_name
      t.text :telephone
      t.text :email
      t.text :address
      t.text :facebook

      t.timestamps null: false
    end
  end
end
