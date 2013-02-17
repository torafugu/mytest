require 'test_helper'

class JushosControllerTest < ActionController::TestCase
  setup do
    @jusho = jushos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jushos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jusho" do
    assert_difference('Jusho.count') do
      post :create, jusho: @jusho.attributes
    end

    assert_redirected_to jusho_path(assigns(:jusho))
  end

  test "should show jusho" do
    get :show, id: @jusho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jusho
    assert_response :success
  end

  test "should update jusho" do
    put :update, id: @jusho, jusho: @jusho.attributes
    assert_redirected_to jusho_path(assigns(:jusho))
  end

  test "should destroy jusho" do
    assert_difference('Jusho.count', -1) do
      delete :destroy, id: @jusho
    end

    assert_redirected_to jushos_path
  end
end
