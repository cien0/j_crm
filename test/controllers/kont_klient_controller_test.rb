require 'test_helper'

class KontKlientControllerTest < ActionController::TestCase
  setup do
    @kont_klient = kont_klient(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kont_klient)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kont_klient" do
    assert_difference('KontKlient.count') do
      post :create, kont_klient: { Cel: @kont_klient.Cel, Data: @kont_klient.Data, Id_Kontrahenci: @kont_klient.Id_Kontrahenci, Inf_dodat: @kont_klient.Inf_dodat, Raport: @kont_klient.Raport, Typ: @kont_klient.Typ }
    end

    assert_redirected_to kont_klient_path(assigns(:kont_klient))
  end

  test "should show kont_klient" do
    get :show, id: @kont_klient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kont_klient
    assert_response :success
  end

  test "should update kont_klient" do
    patch :update, id: @kont_klient, kont_klient: { Cel: @kont_klient.Cel, Data: @kont_klient.Data, Id_Kontrahenci: @kont_klient.Id_Kontrahenci, Inf_dodat: @kont_klient.Inf_dodat, Raport: @kont_klient.Raport, Typ: @kont_klient.Typ }
    assert_redirected_to kont_klient_path(assigns(:kont_klient))
  end

  test "should destroy kont_klient" do
    assert_difference('KontKlient.count', -1) do
      delete :destroy, id: @kont_klient
    end

    assert_redirected_to kont_klient_index_path
  end
end
