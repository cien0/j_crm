require 'test_helper'

class StatusControllerTest < ActionController::TestCase
  setup do
    @status = status(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status" do
    assert_difference('Status.count') do
      post :create, status: { Id_kontrahenci: @status.Id_kontrahenci, Status: @status.Status }
    end

    assert_redirected_to status_path(assigns(:status))
  end

  test "should show status" do
    get :show, id: @status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status
    assert_response :success
  end

  test "should update status" do
    patch :update, id: @status, status: { Id_kontrahenci: @status.Id_kontrahenci, Status: @status.Status }
    assert_redirected_to status_path(assigns(:status))
  end

  test "should destroy status" do
    assert_difference('Status.count', -1) do
      delete :destroy, id: @status
    end

    assert_redirected_to status_index_path
  end
end
