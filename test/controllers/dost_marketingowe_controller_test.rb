require 'test_helper'

class DostMarketingoweControllerTest < ActionController::TestCase
  setup do
    @dost_marketingowe = dost_marketingowe(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dost_marketingowe)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dost_marketingowe" do
    assert_difference('DostMarketingowe.count') do
      post :create, dost_marketingowe: { Id_Kont_klient: @dost_marketingowe.Id_Kont_klient, Ile: @dost_marketingowe.Ile, Typ: @dost_marketingowe.Typ }
    end

    assert_redirected_to dost_marketingowe_path(assigns(:dost_marketingowe))
  end

  test "should show dost_marketingowe" do
    get :show, id: @dost_marketingowe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dost_marketingowe
    assert_response :success
  end

  test "should update dost_marketingowe" do
    patch :update, id: @dost_marketingowe, dost_marketingowe: { Id_Kont_klient: @dost_marketingowe.Id_Kont_klient, Ile: @dost_marketingowe.Ile, Typ: @dost_marketingowe.Typ }
    assert_redirected_to dost_marketingowe_path(assigns(:dost_marketingowe))
  end

  test "should destroy dost_marketingowe" do
    assert_difference('DostMarketingowe.count', -1) do
      delete :destroy, id: @dost_marketingowe
    end

    assert_redirected_to dost_marketingowe_index_path
  end
end
