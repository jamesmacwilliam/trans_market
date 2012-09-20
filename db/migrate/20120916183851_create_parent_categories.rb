class CreateParentCategories < ActiveRecord::Migration
  def change
    create_table :parent_categories do |t|
      t.string :child_id
      t.string :parent_id

      t.timestamps
    end
  end
end
