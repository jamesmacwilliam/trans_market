class Category < ActiveRecord::Base
  attr_accessible :name, :parent, :uid, :products
  set_primary_key :uid

  has_many :products, autosave: true
  has_many :parent_category_association, :class_name => "ParentCategory", :foreign_key => "parent_id"
  has_many :parent_categories, :through => :parent_category_association, :source => :parent_category
  has_many :child_category_association, :class_name => "ParentCategory", :foreign_key => "parent_id"
  has_many :child_categories, :through => :child_category_association, :source => :child_category

  accepts_nested_attributes_for :products, allow_destroy: true
  validate :min_info, on: :update

  def as_json(args=nil)
    puts child_categories.inspect
    {
      id: uid,
      name: name,
      children: children,
      parents: parents
    }
  end

  def parents
    parent_categories.map {|cat| cat.as_json }
  end

  def children
    child_categories.map {|cat| cat.as_json }
  end

  def products=(prods)
    #prods.each {|prod| prod['category_id'] = id}
    self.products_attributes = prods
  end

  def min_info
    #errors.add(:min_contact_info, 'min_contact_info') if products.length == 0
  end
end
