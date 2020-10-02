class Category < ApplicationRecord
  #subcategories  
  has_many :subcategories, :class_name => "Category", :foreign_key => "category_id", :dependent => :destroy
  #indica que tiene una categoria padre (con parent_category)
  belongs_to :category, :class_name => "Category", optional: :true
  has_many :product_categories
  has_many :products, through: :product_categories

end
