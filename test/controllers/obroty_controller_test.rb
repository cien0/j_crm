require 'test_helper'

class ObrotyControllerTest < ActionController::TestCase
  setup do
    @obroty = obroty(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obroty)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obroty" do
    assert_difference('Obroty.count') do
      post :create, obroty: { Id_kontrahenci: @obroty.Id_kontrahenci, Kwota: @obroty.Kwota, Miesiac: @obroty.Miesiac, Rok: @obroty.Rok }
    end

    assert_redirected_to obroty_path(assigns(:obroty))
  end

  test "should show obroty" do
    get :show, id: @obroty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obroty
    assert_response :success
  end

  test "should update obroty" do
    patch :update, id: @obroty, obroty: { Id_kontrahenci: @obroty.Id_kontrahenci, Kwota: @obroty.Kwota, Miesiac: @obroty.Miesiac, Rok: @obroty.Rok }
    assert_redirected_to obroty_path(assigns(:obroty))
  end

  test "should destroy obroty" do
    assert_difference('Obroty.count', -1) do
      delete :destroy, id: @obroty
    end

    assert_redirected_to obroty_index_path
  end
end
