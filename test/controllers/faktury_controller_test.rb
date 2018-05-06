require 'test_helper'

class FakturyControllerTest < ActionController::TestCase
  setup do
    @faktury = faktury(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faktury)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faktury" do
    assert_difference('Faktury.count') do
      post :create, faktury: { Id_kontrahenci: @faktury.Id_kontrahenci, Kwota: @faktury.Kwota, Nr_faktury: @faktury.Nr_faktury, VAT: @faktury.VAT }
    end

    assert_redirected_to faktury_path(assigns(:faktury))
  end

  test "should show faktury" do
    get :show, id: @faktury
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @faktury
    assert_response :success
  end

  test "should update faktury" do
    patch :update, id: @faktury, faktury: { Id_kontrahenci: @faktury.Id_kontrahenci, Kwota: @faktury.Kwota, Nr_faktury: @faktury.Nr_faktury, VAT: @faktury.VAT }
    assert_redirected_to faktury_path(assigns(:faktury))
  end

  test "should destroy faktury" do
    assert_difference('Faktury.count', -1) do
      delete :destroy, id: @faktury
    end

    assert_redirected_to faktury_index_path
  end
end
