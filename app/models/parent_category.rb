class ParentCategory < ActiveRecord::Base
  attr_accessible :child_id, :parent_id
  belongs_to :child_category, foreign_key: :child_id, class_name: 'Category'
  belongs_to :parent_category, foreign_key: :parent_id, class_name: 'Category'
end
