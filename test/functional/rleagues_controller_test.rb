require 'test_helper'

class RleaguesControllerTest < ActionController::TestCase
  setup do
    @rleague = rleagues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rleagues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rleague" do
    assert_difference('Rleague.count') do
      post :create, rleague: @rleague.attributes
    end

    assert_redirected_to rleague_path(assigns(:rleague))
  end

  test "should show rleague" do
    get :show, id: @rleague
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rleague
    assert_response :success
  end

  test "should update rleague" do
    put :update, id: @rleague, rleague: @rleague.attributes
    assert_redirected_to rleague_path(assigns(:rleague))
  end

  test "should destroy rleague" do
    assert_difference('Rleague.count', -1) do
      delete :destroy, id: @rleague
    end

    assert_redirected_to rleagues_path
  end
end
