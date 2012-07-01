class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :uid
      t.string :parent

      t.timestamps
    end
  end
end
