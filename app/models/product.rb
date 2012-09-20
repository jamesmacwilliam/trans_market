class Product < ActiveRecord::Base
  attr_accessible :description, :is_mobile, :location, :name, :price, :uid

  belongs_to :category

  #validates_presence_of :description
  validates :description, uniqueness: { scope: :name, message: 'uniqueness'}

end
