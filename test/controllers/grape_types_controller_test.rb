require 'test_helper'

class GrapeTypesControllerTest < ActionController::TestCase
  setup do
    @grape_type = grape_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grape_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grape_type" do
    assert_difference('GrapeType.count') do
      post :create, grape_type: { active: @grape_type.active, name: @grape_type.name }
    end

    assert_redirected_to grape_type_path(assigns(:grape_type))
  end

  test "should show grape_type" do
    get :show, id: @grape_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grape_type
    assert_response :success
  end

  test "should update grape_type" do
    patch :update, id: @grape_type, grape_type: { active: @grape_type.active, name: @grape_type.name }
    assert_redirected_to grape_type_path(assigns(:grape_type))
  end

  test "should destroy grape_type" do
    assert_difference('GrapeType.count', -1) do
      delete :destroy, id: @grape_type
    end

    assert_redirected_to grape_types_path
  end
end
