require 'test_helper'

class KnotensControllerTest < ActionController::TestCase
  setup do
    @knoten = knotens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:knotens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create knoten" do
    assert_difference('Knoten.count') do
      post :create, :knoten => @knoten.attributes
    end

    assert_redirected_to knoten_path(assigns(:knoten))
  end

  test "should show knoten" do
    get :show, :id => @knoten.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @knoten.to_param
    assert_response :success
  end

  test "should update knoten" do
    put :update, :id => @knoten.to_param, :knoten => @knoten.attributes
    assert_redirected_to knoten_path(assigns(:knoten))
  end

  test "should destroy knoten" do
    assert_difference('Knoten.count', -1) do
      delete :destroy, :id => @knoten.to_param
    end

    assert_redirected_to knotens_path
  end
end
