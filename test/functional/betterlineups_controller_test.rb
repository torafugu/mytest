require 'test_helper'

class BetterlineupsControllerTest < ActionController::TestCase
  setup do
    @betterlineup = betterlineups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:betterlineups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create betterlineup" do
    assert_difference('Betterlineup.count') do
      post :create, betterlineup: @betterlineup.attributes
    end

    assert_redirected_to betterlineup_path(assigns(:betterlineup))
  end

  test "should show betterlineup" do
    get :show, id: @betterlineup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @betterlineup
    assert_response :success
  end

  test "should update betterlineup" do
    put :update, id: @betterlineup, betterlineup: @betterlineup.attributes
    assert_redirected_to betterlineup_path(assigns(:betterlineup))
  end

  test "should destroy betterlineup" do
    assert_difference('Betterlineup.count', -1) do
      delete :destroy, id: @betterlineup
    end

    assert_redirected_to betterlineups_path
  end
end
