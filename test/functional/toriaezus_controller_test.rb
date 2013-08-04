require 'test_helper'

class ToriaezusControllerTest < ActionController::TestCase
  setup do
    @toriaezu = toriaezus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toriaezus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toriaezu" do
    assert_difference('Toriaezu.count') do
      post :create, toriaezu: @toriaezu.attributes
    end

    assert_redirected_to toriaezu_path(assigns(:toriaezu))
  end

  test "should show toriaezu" do
    get :show, id: @toriaezu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toriaezu
    assert_response :success
  end

  test "should update toriaezu" do
    put :update, id: @toriaezu, toriaezu: @toriaezu.attributes
    assert_redirected_to toriaezu_path(assigns(:toriaezu))
  end

  test "should destroy toriaezu" do
    assert_difference('Toriaezu.count', -1) do
      delete :destroy, id: @toriaezu
    end

    assert_redirected_to toriaezus_path
  end
end
