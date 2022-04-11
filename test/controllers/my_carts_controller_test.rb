require 'test_helper'

class MyCartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_cart = my_carts(:one)
  end

  test "should get index" do
    get my_carts_url
    assert_response :success
  end

  test "should get new" do
    get new_my_cart_url
    assert_response :success
  end

  test "should create my_cart" do
    assert_difference('MyCart.count') do
      post my_carts_url, params: { my_cart: {  } }
    end

    assert_redirected_to my_cart_url(MyCart.last)
  end

  test "should show my_cart" do
    get my_cart_url(@my_cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_cart_url(@my_cart)
    assert_response :success
  end

  test "should update my_cart" do
    patch my_cart_url(@my_cart), params: { my_cart: {  } }
    assert_redirected_to my_cart_url(@my_cart)
  end

  test "should destroy my_cart" do
    assert_difference('MyCart.count', -1) do
      delete my_cart_url(@my_cart)
    end

    assert_redirected_to my_carts_url
  end
end
