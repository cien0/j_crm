require 'test_helper'

class ZlecenieControllerTest < ActionController::TestCase
  setup do
    @zlecenie = zlecenie(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zlecenie)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zlecenie" do
    assert_difference('Zlecenie.count') do
      post :create, zlecenie: { Data_utworzenia: @zlecenie.Data_utworzenia, Data_zlecenia: @zlecenie.Data_zlecenia, Id_Kierownik: @zlecenie.Id_Kierownik, Id_Opiekun: @zlecenie.Id_Opiekun, Info: @zlecenie.Info, Opis: @zlecenie.Opis, Raport: @zlecenie.Raport, Status: @zlecenie.Status, Typ: @zlecenie.Typ }
    end

    assert_redirected_to zlecenie_path(assigns(:zlecenie))
  end

  test "should show zlecenie" do
    get :show, id: @zlecenie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zlecenie
    assert_response :success
  end

  test "should update zlecenie" do
    patch :update, id: @zlecenie, zlecenie: { Data_utworzenia: @zlecenie.Data_utworzenia, Data_zlecenia: @zlecenie.Data_zlecenia, Id_Kierownik: @zlecenie.Id_Kierownik, Id_Opiekun: @zlecenie.Id_Opiekun, Info: @zlecenie.Info, Opis: @zlecenie.Opis, Raport: @zlecenie.Raport, Status: @zlecenie.Status, Typ: @zlecenie.Typ }
    assert_redirected_to zlecenie_path(assigns(:zlecenie))
  end

  test "should destroy zlecenie" do
    assert_difference('Zlecenie.count', -1) do
      delete :destroy, id: @zlecenie
    end

    assert_redirected_to zlecenie_index_path
  end
end
