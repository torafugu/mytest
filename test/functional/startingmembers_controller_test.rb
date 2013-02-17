require 'test_helper'

class StartingmembersControllerTest < ActionController::TestCase
  setup do
    @startingmember = startingmembers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startingmembers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startingmember" do
    assert_difference('Startingmember.count') do
      post :create, startingmember: @startingmember.attributes
    end

    assert_redirected_to startingmember_path(assigns(:startingmember))
  end

  test "should show startingmember" do
    get :show, id: @startingmember
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startingmember
    assert_response :success
  end

  test "should update startingmember" do
    put :update, id: @startingmember, startingmember: @startingmember.attributes
    assert_redirected_to startingmember_path(assigns(:startingmember))
  end

  test "should destroy startingmember" do
    assert_difference('Startingmember.count', -1) do
      delete :destroy, id: @startingmember
    end

    assert_redirected_to startingmembers_path
  end
end
