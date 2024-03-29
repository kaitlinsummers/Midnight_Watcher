require 'test_helper'

class CrewsControllerTest < ActionController::TestCase
  setup do
    @crew = crews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crew" do
    assert_difference('Crew.count') do
      post :create, crew: { member: @crew.member, name: @crew.name }
    end

    assert_redirected_to crew_path(assigns(:crew))
  end

  test "should show crew" do
    get :show, id: @crew
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crew
    assert_response :success
  end

  test "should update crew" do
    patch :update, id: @crew, crew: { member: @crew.member, name: @crew.name }
    assert_redirected_to crew_path(assigns(:crew))
  end

  test "should destroy crew" do
    assert_difference('Crew.count', -1) do
      delete :destroy, id: @crew
    end

    assert_redirected_to crews_path
  end
end
