require 'test_helper'

class OpiekunControllerTest < ActionController::TestCase
  setup do
    @opiekun = opiekun(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opiekun)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opiekun" do
    assert_difference('Opiekun.count') do
      post :create, opiekun: { Aktywny: @opiekun.Aktywny, Imie: @opiekun.Imie, Login: @opiekun.Login, Nazwisko: @opiekun.Nazwisko }
    end

    assert_redirected_to opiekun_path(assigns(:opiekun))
  end

  test "should show opiekun" do
    get :show, id: @opiekun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opiekun
    assert_response :success
  end

  test "should update opiekun" do
    patch :update, id: @opiekun, opiekun: { Aktywny: @opiekun.Aktywny, Imie: @opiekun.Imie, Login: @opiekun.Login, Nazwisko: @opiekun.Nazwisko }
    assert_redirected_to opiekun_path(assigns(:opiekun))
  end

  test "should destroy opiekun" do
    assert_difference('Opiekun.count', -1) do
      delete :destroy, id: @opiekun
    end

    assert_redirected_to opiekun_index_path
  end
end
