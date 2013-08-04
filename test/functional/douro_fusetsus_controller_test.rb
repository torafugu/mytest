require 'test_helper'

class DouroFusetsusControllerTest < ActionController::TestCase
  setup do
    @douro_fusetsu = douro_fusetsus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:douro_fusetsus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create douro_fusetsu" do
    assert_difference('DouroFusetsu.count') do
      post :create, douro_fusetsu: @douro_fusetsu.attributes
    end

    assert_redirected_to douro_fusetsu_path(assigns(:douro_fusetsu))
  end

  test "should show douro_fusetsu" do
    get :show, id: @douro_fusetsu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @douro_fusetsu
    assert_response :success
  end

  test "should update douro_fusetsu" do
    put :update, id: @douro_fusetsu, douro_fusetsu: @douro_fusetsu.attributes
    assert_redirected_to douro_fusetsu_path(assigns(:douro_fusetsu))
  end

  test "should destroy douro_fusetsu" do
    assert_difference('DouroFusetsu.count', -1) do
      delete :destroy, id: @douro_fusetsu
    end

    assert_redirected_to douro_fusetsus_path
  end
end
