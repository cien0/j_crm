require 'test_helper'

class OsobaKontControllerTest < ActionController::TestCase
  setup do
    @osoba_kont = osoba_kont(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:osoba_kont)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create osoba_kont" do
    assert_difference('OsobaKont.count') do
      post :create, osoba_kont: { Data_urodz: @osoba_kont.Data_urodz, Imie: @osoba_kont.Imie, Imiona: @osoba_kont.Imiona, Nazwisko: @osoba_kont.Nazwisko }
    end

    assert_redirected_to osoba_kont_path(assigns(:osoba_kont))
  end

  test "should show osoba_kont" do
    get :show, id: @osoba_kont
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @osoba_kont
    assert_response :success
  end

  test "should update osoba_kont" do
    patch :update, id: @osoba_kont, osoba_kont: { Data_urodz: @osoba_kont.Data_urodz, Imie: @osoba_kont.Imie, Imiona: @osoba_kont.Imiona, Nazwisko: @osoba_kont.Nazwisko }
    assert_redirected_to osoba_kont_path(assigns(:osoba_kont))
  end

  test "should destroy osoba_kont" do
    assert_difference('OsobaKont.count', -1) do
      delete :destroy, id: @osoba_kont
    end

    assert_redirected_to osoba_kont_index_path
  end
end
