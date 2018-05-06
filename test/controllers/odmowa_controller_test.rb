require 'test_helper'

class OdmowaControllerTest < ActionController::TestCase
  setup do
    @odmowa = odmowa(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odmowa)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odmowa" do
    assert_difference('Odmowa.count') do
      post :create, odmowa: { Data: @odmowa.Data, Id_Kont_klient: @odmowa.Id_Kont_klient, Odmowa: @odmowa.Odmowa }
    end

    assert_redirected_to odmowa_path(assigns(:odmowa))
  end

  test "should show odmowa" do
    get :show, id: @odmowa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odmowa
    assert_response :success
  end

  test "should update odmowa" do
    patch :update, id: @odmowa, odmowa: { Data: @odmowa.Data, Id_Kont_klient: @odmowa.Id_Kont_klient, Odmowa: @odmowa.Odmowa }
    assert_redirected_to odmowa_path(assigns(:odmowa))
  end

  test "should destroy odmowa" do
    assert_difference('Odmowa.count', -1) do
      delete :destroy, id: @odmowa
    end

    assert_redirected_to odmowa_index_path
  end
end
