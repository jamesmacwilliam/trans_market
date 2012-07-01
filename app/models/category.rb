class Category < ActiveRecord::Base
  attr_accessible :name, :parent, :uid
end
