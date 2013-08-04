require 'test_helper'

class DourosControllerTest < ActionController::TestCase
  setup do
    @douro = douros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:douros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create douro" do
    assert_difference('Douro.count') do
      post :create, douro: @douro.attributes
    end

    assert_redirected_to douro_path(assigns(:douro))
  end

  test "should show douro" do
    get :show, id: @douro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @douro
    assert_response :success
  end

  test "should update douro" do
    put :update, id: @douro, douro: @douro.attributes
    assert_redirected_to douro_path(assigns(:douro))
  end

  test "should destroy douro" do
    assert_difference('Douro.count', -1) do
      delete :destroy, id: @douro
    end

    assert_redirected_to douros_path
  end
end
