require "application_system_test_case"

class ProductVariationsTest < ApplicationSystemTestCase
  setup do
    @product_variation = product_variations(:one)
  end

  test "visiting the index" do
    visit product_variations_url
    assert_selector "h1", text: "Product Variations"
  end

  test "creating a Product variation" do
    visit product_variations_url
    click_on "New Product Variation"

    fill_in "Product", with: @product_variation.product_id
    fill_in "Stock", with: @product_variation.stock
    fill_in "Variation", with: @product_variation.variation_id
    click_on "Create Product variation"

    assert_text "Product variation was successfully created"
    click_on "Back"
  end

  test "updating a Product variation" do
    visit product_variations_url
    click_on "Edit", match: :first

    fill_in "Product", with: @product_variation.product_id
    fill_in "Stock", with: @product_variation.stock
    fill_in "Variation", with: @product_variation.variation_id
    click_on "Update Product variation"

    assert_text "Product variation was successfully updated"
    click_on "Back"
  end

  test "destroying a Product variation" do
    visit product_variations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product variation was successfully destroyed"
  end
end
