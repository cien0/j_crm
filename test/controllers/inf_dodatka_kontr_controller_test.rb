require 'test_helper'

class InfDodatkaKontrControllerTest < ActionController::TestCase
  setup do
    @inf_dodatka_kontr = inf_dodatka_kontr(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inf_dodatka_kontr)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inf_dodatka_kontr" do
    assert_difference('InfDodatkaKontr.count') do
      post :create, inf_dodatka_kontr: { Id_Kontrahenci: @inf_dodatka_kontr.Id_Kontrahenci, Inf_dodatkowa: @inf_dodatka_kontr.Inf_dodatkowa }
    end

    assert_redirected_to inf_dodatka_kontr_path(assigns(:inf_dodatka_kontr))
  end

  test "should show inf_dodatka_kontr" do
    get :show, id: @inf_dodatka_kontr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inf_dodatka_kontr
    assert_response :success
  end

  test "should update inf_dodatka_kontr" do
    patch :update, id: @inf_dodatka_kontr, inf_dodatka_kontr: { Id_Kontrahenci: @inf_dodatka_kontr.Id_Kontrahenci, Inf_dodatkowa: @inf_dodatka_kontr.Inf_dodatkowa }
    assert_redirected_to inf_dodatka_kontr_path(assigns(:inf_dodatka_kontr))
  end

  test "should destroy inf_dodatka_kontr" do
    assert_difference('InfDodatkaKontr.count', -1) do
      delete :destroy, id: @inf_dodatka_kontr
    end

    assert_redirected_to inf_dodatka_kontr_index_path
  end
end
