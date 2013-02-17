require 'test_helper'

class OnecolumnmodelsControllerTest < ActionController::TestCase
  setup do
    @onecolumnmodel = onecolumnmodels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:onecolumnmodels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create onecolumnmodel" do
    assert_difference('Onecolumnmodel.count') do
      post :create, onecolumnmodel: @onecolumnmodel.attributes
    end

    assert_redirected_to onecolumnmodel_path(assigns(:onecolumnmodel))
  end

  test "should show onecolumnmodel" do
    get :show, id: @onecolumnmodel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @onecolumnmodel
    assert_response :success
  end

  test "should update onecolumnmodel" do
    put :update, id: @onecolumnmodel, onecolumnmodel: @onecolumnmodel.attributes
    assert_redirected_to onecolumnmodel_path(assigns(:onecolumnmodel))
  end

  test "should destroy onecolumnmodel" do
    assert_difference('Onecolumnmodel.count', -1) do
      delete :destroy, id: @onecolumnmodel
    end

    assert_redirected_to onecolumnmodels_path
  end
end
