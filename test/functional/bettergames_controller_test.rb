require 'test_helper'

class BettergamesControllerTest < ActionController::TestCase
  setup do
    @bettergame = bettergames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bettergames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bettergame" do
    assert_difference('Bettergame.count') do
      post :create, bettergame: @bettergame.attributes
    end

    assert_redirected_to bettergame_path(assigns(:bettergame))
  end

  test "should show bettergame" do
    get :show, id: @bettergame
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bettergame
    assert_response :success
  end

  test "should update bettergame" do
    put :update, id: @bettergame, bettergame: @bettergame.attributes
    assert_redirected_to bettergame_path(assigns(:bettergame))
  end

  test "should destroy bettergame" do
    assert_difference('Bettergame.count', -1) do
      delete :destroy, id: @bettergame
    end

    assert_redirected_to bettergames_path
  end
end
