require 'test_helper'

class RmembersControllerTest < ActionController::TestCase
  setup do
    @rmember = rmembers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rmembers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rmember" do
    assert_difference('Rmember.count') do
      post :create, rmember: @rmember.attributes
    end

    assert_redirected_to rmember_path(assigns(:rmember))
  end

  test "should show rmember" do
    get :show, id: @rmember
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rmember
    assert_response :success
  end

  test "should update rmember" do
    put :update, id: @rmember, rmember: @rmember.attributes
    assert_redirected_to rmember_path(assigns(:rmember))
  end

  test "should destroy rmember" do
    assert_difference('Rmember.count', -1) do
      delete :destroy, id: @rmember
    end

    assert_redirected_to rmembers_path
  end
end
