require 'test_helper'

class AdresOsobaControllerTest < ActionController::TestCase
  setup do
    @adres_osoba = adres_osoba(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adres_osoba)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adres_osoba" do
    assert_difference('AdresOsoba.count') do
      post :create, adres_osoba: { Id_Osoba_kont: @adres_osoba.Id_Osoba_kont, Kod_pocztowy: @adres_osoba.Kod_pocztowy, Kraj: @adres_osoba.Kraj, Miasto: @adres_osoba.Miasto, Nr_budynku: @adres_osoba.Nr_budynku, Nr_lokalu: @adres_osoba.Nr_lokalu, Opis: @adres_osoba.Opis, Skrytka: @adres_osoba.Skrytka, Typ: @adres_osoba.Typ, Ulica: @adres_osoba.Ulica }
    end

    assert_redirected_to adres_osoba_path(assigns(:adres_osoba))
  end

  test "should show adres_osoba" do
    get :show, id: @adres_osoba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adres_osoba
    assert_response :success
  end

  test "should update adres_osoba" do
    patch :update, id: @adres_osoba, adres_osoba: { Id_Osoba_kont: @adres_osoba.Id_Osoba_kont, Kod_pocztowy: @adres_osoba.Kod_pocztowy, Kraj: @adres_osoba.Kraj, Miasto: @adres_osoba.Miasto, Nr_budynku: @adres_osoba.Nr_budynku, Nr_lokalu: @adres_osoba.Nr_lokalu, Opis: @adres_osoba.Opis, Skrytka: @adres_osoba.Skrytka, Typ: @adres_osoba.Typ, Ulica: @adres_osoba.Ulica }
    assert_redirected_to adres_osoba_path(assigns(:adres_osoba))
  end

  test "should destroy adres_osoba" do
    assert_difference('AdresOsoba.count', -1) do
      delete :destroy, id: @adres_osoba
    end

    assert_redirected_to adres_osoba_index_path
  end
end
