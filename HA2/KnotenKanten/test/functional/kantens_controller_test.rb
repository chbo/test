require 'test_helper'

class KantensControllerTest < ActionController::TestCase
  setup do
    @kanten = kantens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kantens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kanten" do
    assert_difference('Kanten.count') do
      post :create, :kanten => @kanten.attributes
    end

    assert_redirected_to kanten_path(assigns(:kanten))
  end

  test "should show kanten" do
    get :show, :id => @kanten.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kanten.to_param
    assert_response :success
  end

  test "should update kanten" do
    put :update, :id => @kanten.to_param, :kanten => @kanten.attributes
    assert_redirected_to kanten_path(assigns(:kanten))
  end

  test "should destroy kanten" do
    assert_difference('Kanten.count', -1) do
      delete :destroy, :id => @kanten.to_param
    end

    assert_redirected_to kantens_path
  end
end
