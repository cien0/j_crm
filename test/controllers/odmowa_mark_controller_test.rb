require 'test_helper'

class OdmowaMarkControllerTest < ActionController::TestCase
  setup do
    @odmowa_mark = odmowa_mark(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odmowa_mark)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odmowa_mark" do
    assert_difference('OdmowaMark.count') do
      post :create, odmowa_mark: { data: @odmowa_mark.data, kont_klient_id: @odmowa_mark.kont_klient_id, odmowa_typ_id: @odmowa_mark.odmowa_typ_id }
    end

    assert_redirected_to odmowa_mark_path(assigns(:odmowa_mark))
  end

  test "should show odmowa_mark" do
    get :show, id: @odmowa_mark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odmowa_mark
    assert_response :success
  end

  test "should update odmowa_mark" do
    patch :update, id: @odmowa_mark, odmowa_mark: { data: @odmowa_mark.data, kont_klient_id: @odmowa_mark.kont_klient_id, odmowa_typ_id: @odmowa_mark.odmowa_typ_id }
    assert_redirected_to odmowa_mark_path(assigns(:odmowa_mark))
  end

  test "should destroy odmowa_mark" do
    assert_difference('OdmowaMark.count', -1) do
      delete :destroy, id: @odmowa_mark
    end

    assert_redirected_to odmowa_mark_index_path
  end
end
