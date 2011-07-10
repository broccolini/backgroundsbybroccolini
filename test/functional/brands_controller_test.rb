require 'test_helper'

class BrandsControllerTest < ActionController::TestCase
  setup do
    @brand = brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brand" do
    assert_difference('Brand.count') do
      post :create, :brand => @brand.attributes
    end

    assert_redirected_to brand_path(assigns(:brand))
  end

  test "should show brand" do
    get :show, :id => @brand.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @brand.to_param
    assert_response :success
  end

  test "should update brand" do
    put :update, :id => @brand.to_param, :brand => @brand.attributes
    assert_redirected_to brand_path(assigns(:brand))
  end

  test "should destroy brand" do
    assert_difference('Brand.count', -1) do
      delete :destroy, :id => @brand.to_param
    end

    assert_redirected_to brands_path
  end
end
