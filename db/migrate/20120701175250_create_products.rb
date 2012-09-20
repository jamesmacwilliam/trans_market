class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :uid
      t.string :name
      t.text :description
      t.string :price
      t.string :location
      t.boolean :is_mobile
      t.string :category_id

      t.timestamps
    end
  end
end
