require 'test_helper'

class ImpRamenControllerTest < ActionController::TestCase
  setup do
    @imp_raman = imp_ramen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imp_ramen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imp_raman" do
    assert_difference('ImpRaman.count') do
      post :create, imp_raman: @imp_raman.attributes
    end

    assert_redirected_to imp_raman_path(assigns(:imp_raman))
  end

  test "should show imp_raman" do
    get :show, id: @imp_raman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imp_raman
    assert_response :success
  end

  test "should update imp_raman" do
    put :update, id: @imp_raman, imp_raman: @imp_raman.attributes
    assert_redirected_to imp_raman_path(assigns(:imp_raman))
  end

  test "should destroy imp_raman" do
    assert_difference('ImpRaman.count', -1) do
      delete :destroy, id: @imp_raman
    end

    assert_redirected_to imp_ramen_path
  end
end
