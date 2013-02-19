require 'test_helper'

class Imp2RamenControllerTest < ActionController::TestCase
  setup do
    @imp2_raman = imp2_ramen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imp2_ramen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imp2_raman" do
    assert_difference('Imp2Raman.count') do
      post :create, imp2_raman: @imp2_raman.attributes
    end

    assert_redirected_to imp2_raman_path(assigns(:imp2_raman))
  end

  test "should show imp2_raman" do
    get :show, id: @imp2_raman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imp2_raman
    assert_response :success
  end

  test "should update imp2_raman" do
    put :update, id: @imp2_raman, imp2_raman: @imp2_raman.attributes
    assert_redirected_to imp2_raman_path(assigns(:imp2_raman))
  end

  test "should destroy imp2_raman" do
    assert_difference('Imp2Raman.count', -1) do
      delete :destroy, id: @imp2_raman
    end

    assert_redirected_to imp2_ramen_path
  end
end
