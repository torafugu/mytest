require 'test_helper'

class BestlineupsControllerTest < ActionController::TestCase
  setup do
    @bestlineup = bestlineups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bestlineups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bestlineup" do
    assert_difference('Bestlineup.count') do
      post :create, bestlineup: @bestlineup.attributes
    end

    assert_redirected_to bestlineup_path(assigns(:bestlineup))
  end

  test "should show bestlineup" do
    get :show, id: @bestlineup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bestlineup
    assert_response :success
  end

  test "should update bestlineup" do
    put :update, id: @bestlineup, bestlineup: @bestlineup.attributes
    assert_redirected_to bestlineup_path(assigns(:bestlineup))
  end

  test "should destroy bestlineup" do
    assert_difference('Bestlineup.count', -1) do
      delete :destroy, id: @bestlineup
    end

    assert_redirected_to bestlineups_path
  end
end
