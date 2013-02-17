require 'test_helper'

class RteamsControllerTest < ActionController::TestCase
  setup do
    @rteam = rteams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rteams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rteam" do
    assert_difference('Rteam.count') do
      post :create, rteam: @rteam.attributes
    end

    assert_redirected_to rteam_path(assigns(:rteam))
  end

  test "should show rteam" do
    get :show, id: @rteam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rteam
    assert_response :success
  end

  test "should update rteam" do
    put :update, id: @rteam, rteam: @rteam.attributes
    assert_redirected_to rteam_path(assigns(:rteam))
  end

  test "should destroy rteam" do
    assert_difference('Rteam.count', -1) do
      delete :destroy, id: @rteam
    end

    assert_redirected_to rteams_path
  end
end
