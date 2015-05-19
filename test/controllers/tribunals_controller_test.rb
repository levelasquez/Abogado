require 'test_helper'

class TribunalsControllerTest < ActionController::TestCase
  setup do
    @tribunal = tribunals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tribunals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tribunal" do
    assert_difference('Tribunal.count') do
      post :create, tribunal: { area: @tribunal.area, direccion: @tribunal.direccion, instancia: @tribunal.instancia, juez: @tribunal.juez, telefono: @tribunal.telefono, tipo: @tribunal.tipo }
    end

    assert_redirected_to tribunal_path(assigns(:tribunal))
  end

  test "should show tribunal" do
    get :show, id: @tribunal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tribunal
    assert_response :success
  end

  test "should update tribunal" do
    patch :update, id: @tribunal, tribunal: { area: @tribunal.area, direccion: @tribunal.direccion, instancia: @tribunal.instancia, juez: @tribunal.juez, telefono: @tribunal.telefono, tipo: @tribunal.tipo }
    assert_redirected_to tribunal_path(assigns(:tribunal))
  end

  test "should destroy tribunal" do
    assert_difference('Tribunal.count', -1) do
      delete :destroy, id: @tribunal
    end

    assert_redirected_to tribunals_path
  end
end
