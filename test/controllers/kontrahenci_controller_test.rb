require 'test_helper'

class KontrahenciControllerTest < ActionController::TestCase
  setup do
    @kontrahenci = kontrahenci(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kontrahenci)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kontrahenci" do
    assert_difference('Kontrahenci.count') do
      post :create, kontrahenci: { Email: @kontrahenci.Email, Id_opiekun: @kontrahenci.Id_opiekun, Id_system: @kontrahenci.Id_system, NIP: @kontrahenci.NIP, Nazwa: @kontrahenci.Nazwa, Numer_fak: @kontrahenci.Numer_fak, Numer_tel: @kontrahenci.Numer_tel, WWW: @kontrahenci.WWW }
    end

    assert_redirected_to kontrahenci_path(assigns(:kontrahenci))
  end

  test "should show kontrahenci" do
    get :show, id: @kontrahenci
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kontrahenci
    assert_response :success
  end

  test "should update kontrahenci" do
    patch :update, id: @kontrahenci, kontrahenci: { Email: @kontrahenci.Email, Id_opiekun: @kontrahenci.Id_opiekun, Id_system: @kontrahenci.Id_system, NIP: @kontrahenci.NIP, Nazwa: @kontrahenci.Nazwa, Numer_fak: @kontrahenci.Numer_fak, Numer_tel: @kontrahenci.Numer_tel, WWW: @kontrahenci.WWW }
    assert_redirected_to kontrahenci_path(assigns(:kontrahenci))
  end

  test "should destroy kontrahenci" do
    assert_difference('Kontrahenci.count', -1) do
      delete :destroy, id: @kontrahenci
    end

    assert_redirected_to kontrahenci_index_path
  end
end
