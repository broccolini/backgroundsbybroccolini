require 'test_helper'

class BackgroundsControllerTest < ActionController::TestCase
  setup do
    @background = backgrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:backgrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create background" do
    assert_difference('Background.count') do
      post :create, :background => @background.attributes
    end

    assert_redirected_to background_path(assigns(:background))
  end

  test "should show background" do
    get :show, :id => @background.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @background.to_param
    assert_response :success
  end

  test "should update background" do
    put :update, :id => @background.to_param, :background => @background.attributes
    assert_redirected_to background_path(assigns(:background))
  end

  test "should destroy background" do
    assert_difference('Background.count', -1) do
      delete :destroy, :id => @background.to_param
    end

    assert_redirected_to backgrounds_path
  end
end
