require 'test_helper'

class BestgamesControllerTest < ActionController::TestCase
  setup do
    @bestgame = bestgames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bestgames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bestgame" do
    assert_difference('Bestgame.count') do
      post :create, bestgame: @bestgame.attributes
    end

    assert_redirected_to bestgame_path(assigns(:bestgame))
  end

  test "should show bestgame" do
    get :show, id: @bestgame
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bestgame
    assert_response :success
  end

  test "should update bestgame" do
    put :update, id: @bestgame, bestgame: @bestgame.attributes
    assert_redirected_to bestgame_path(assigns(:bestgame))
  end

  test "should destroy bestgame" do
    assert_difference('Bestgame.count', -1) do
      delete :destroy, id: @bestgame
    end

    assert_redirected_to bestgames_path
  end
end
