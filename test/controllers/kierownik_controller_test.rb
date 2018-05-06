require 'test_helper'

class KierownikControllerTest < ActionController::TestCase
  setup do
    @kierownik = kierownik(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kierownik)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kierownik" do
    assert_difference('Kierownik.count') do
      post :create, kierownik: { Aktywny: @kierownik.Aktywny, Imie: @kierownik.Imie, Login: @kierownik.Login, Nazwisko: @kierownik.Nazwisko }
    end

    assert_redirected_to kierownik_path(assigns(:kierownik))
  end

  test "should show kierownik" do
    get :show, id: @kierownik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kierownik
    assert_response :success
  end

  test "should update kierownik" do
    patch :update, id: @kierownik, kierownik: { Aktywny: @kierownik.Aktywny, Imie: @kierownik.Imie, Login: @kierownik.Login, Nazwisko: @kierownik.Nazwisko }
    assert_redirected_to kierownik_path(assigns(:kierownik))
  end

  test "should destroy kierownik" do
    assert_difference('Kierownik.count', -1) do
      delete :destroy, id: @kierownik
    end

    assert_redirected_to kierownik_index_path
  end
end
