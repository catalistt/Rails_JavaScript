require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
   test "category has just one parent" do
      category_parent = Category.create(name: "category_test")
      category_child = Category.create(name: "category_test_2", category_id: category_parent.id)
      category_extra = Category.create(name: "category_test_3")
      duplicated_category = category_child

      duplicated_category.category_id = category_extra.id
      assert_not duplicated_category.valid?
   end
end
