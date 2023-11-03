require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Attach", with: @product.attach
    fill_in "Category", with: @product.category_id
    fill_in "Deleted", with: @product.deleted
    fill_in "Description", with: @product.description
    fill_in "Discount", with: @product.discount
    fill_in "Image", with: @product.image
    fill_in "List price", with: @product.list_price
    fill_in "Mark", with: @product.mark_id
    fill_in "Name", with: @product.name
    fill_in "Price", with: @product.price
    fill_in "Ranked", with: @product.ranked
    fill_in "Stock", with: @product.stock
    fill_in "Technical info", with: @product.technical_info
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Attach", with: @product.attach
    fill_in "Category", with: @product.category_id
    fill_in "Deleted", with: @product.deleted
    fill_in "Description", with: @product.description
    fill_in "Discount", with: @product.discount
    fill_in "Image", with: @product.image
    fill_in "List price", with: @product.list_price
    fill_in "Mark", with: @product.mark_id
    fill_in "Name", with: @product.name
    fill_in "Price", with: @product.price
    fill_in "Ranked", with: @product.ranked
    fill_in "Stock", with: @product.stock
    fill_in "Technical info", with: @product.technical_info
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
