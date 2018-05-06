require 'test_helper'

class AdresKontrControllerTest < ActionController::TestCase
  setup do
    @adres_kontr = adres_kontr(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adres_kontr)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adres_kontr" do
    assert_difference('AdresKontr.count') do
      post :create, adres_kontr: { Id_Kontrahenci: @adres_kontr.Id_Kontrahenci, Kod_pocztowy: @adres_kontr.Kod_pocztowy, Kraj: @adres_kontr.Kraj, Miasto: @adres_kontr.Miasto, Nr_budynku: @adres_kontr.Nr_budynku, Nr_lokalu: @adres_kontr.Nr_lokalu, Skrytka: @adres_kontr.Skrytka, Typ: @adres_kontr.Typ, Ulica: @adres_kontr.Ulica }
    end

    assert_redirected_to adres_kontr_path(assigns(:adres_kontr))
  end

  test "should show adres_kontr" do
    get :show, id: @adres_kontr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adres_kontr
    assert_response :success
  end

  test "should update adres_kontr" do
    patch :update, id: @adres_kontr, adres_kontr: { Id_Kontrahenci: @adres_kontr.Id_Kontrahenci, Kod_pocztowy: @adres_kontr.Kod_pocztowy, Kraj: @adres_kontr.Kraj, Miasto: @adres_kontr.Miasto, Nr_budynku: @adres_kontr.Nr_budynku, Nr_lokalu: @adres_kontr.Nr_lokalu, Skrytka: @adres_kontr.Skrytka, Typ: @adres_kontr.Typ, Ulica: @adres_kontr.Ulica }
    assert_redirected_to adres_kontr_path(assigns(:adres_kontr))
  end

  test "should destroy adres_kontr" do
    assert_difference('AdresKontr.count', -1) do
      delete :destroy, id: @adres_kontr
    end

    assert_redirected_to adres_kontr_index_path
  end
end
