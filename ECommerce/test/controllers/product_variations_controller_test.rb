require 'test_helper'

class ProductVariationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_variation = product_variations(:one)
  end

  test "should get index" do
    get product_variations_url
    assert_response :success
  end

  test "should get new" do
    get new_product_variation_url
    assert_response :success
  end

  test "should create product_variation" do
    assert_difference('ProductVariation.count') do
      post product_variations_url, params: { product_variation: { product_id: @product_variation.product_id, stock: @product_variation.stock, variation_id: @product_variation.variation_id } }
    end

    assert_redirected_to product_variation_url(ProductVariation.last)
  end

  test "should show product_variation" do
    get product_variation_url(@product_variation)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_variation_url(@product_variation)
    assert_response :success
  end

  test "should update product_variation" do
    patch product_variation_url(@product_variation), params: { product_variation: { product_id: @product_variation.product_id, stock: @product_variation.stock, variation_id: @product_variation.variation_id } }
    assert_redirected_to product_variation_url(@product_variation)
  end

  test "should destroy product_variation" do
    assert_difference('ProductVariation.count', -1) do
      delete product_variation_url(@product_variation)
    end

    assert_redirected_to product_variations_url
  end
end
