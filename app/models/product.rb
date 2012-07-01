class Product < ActiveRecord::Base
  attr_accessible :description, :is_mobile, :location, :name, :price, :uid
end
