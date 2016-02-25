class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.date :birthday, :null => false
      t.string :phone1, :null => false
      t.string :phone2
      t.string :post_number, :null => false
      t.string :address, :null => false
      t.text :other

      t.timestamps null: false
    end
  end
end
