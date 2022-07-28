require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get view_product" do
    get products_view_product_url
    assert_response :success
  end

end
