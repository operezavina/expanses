require 'test_helper'

class ExpansesControllerTest < ActionController::TestCase
  setup do
    @expanse = expanses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expanses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expanse" do
    assert_difference('Expanse.count') do
      post :create, expanse: { amount: @expanse.amount, dated: @expanse.dated, detail: @expanse.detail }
    end

    assert_redirected_to expanse_path(assigns(:expanse))
  end

  test "should show expanse" do
    get :show, id: @expanse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expanse
    assert_response :success
  end

  test "should update expanse" do
    patch :update, id: @expanse, expanse: { amount: @expanse.amount, dated: @expanse.dated, detail: @expanse.detail }
    assert_redirected_to expanse_path(assigns(:expanse))
  end

  test "should destroy expanse" do
    assert_difference('Expanse.count', -1) do
      delete :destroy, id: @expanse
    end

    assert_redirected_to expanses_path
  end
end
