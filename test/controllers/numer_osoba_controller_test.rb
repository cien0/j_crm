require 'test_helper'

class NumerOsobaControllerTest < ActionController::TestCase
  setup do
    @numer_osoba = numer_osoba(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:numer_osoba)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create numer_osoba" do
    assert_difference('NumerOsoba.count') do
      post :create, numer_osoba: { Id_Osoba_kont: @numer_osoba.Id_Osoba_kont, Kontakt: @numer_osoba.Kontakt, Opis: @numer_osoba.Opis, Typ: @numer_osoba.Typ }
    end

    assert_redirected_to numer_osoba_path(assigns(:numer_osoba))
  end

  test "should show numer_osoba" do
    get :show, id: @numer_osoba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @numer_osoba
    assert_response :success
  end

  test "should update numer_osoba" do
    patch :update, id: @numer_osoba, numer_osoba: { Id_Osoba_kont: @numer_osoba.Id_Osoba_kont, Kontakt: @numer_osoba.Kontakt, Opis: @numer_osoba.Opis, Typ: @numer_osoba.Typ }
    assert_redirected_to numer_osoba_path(assigns(:numer_osoba))
  end

  test "should destroy numer_osoba" do
    assert_difference('NumerOsoba.count', -1) do
      delete :destroy, id: @numer_osoba
    end

    assert_redirected_to numer_osoba_index_path
  end
end
