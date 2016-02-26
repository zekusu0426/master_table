class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :emp_id
      t.string :name
      t.date :birthday
      t.string :phone1
      t.string :phone2
      t.string :post_number
      t.string :address
      t.text :other

      t.timestamps null: false
    end
  end
end
