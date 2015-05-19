require 'test_helper'

class AbogadoPsControllerTest < ActionController::TestCase
  setup do
    @abogado_p = abogado_ps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abogado_ps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abogado_p" do
    assert_difference('AbogadoP.count') do
      post :create, abogado_p: { apellido: @abogado_p.apellido, cedula: @abogado_p.cedula, direccion: @abogado_p.direccion, integer: @abogado_p.integer, ipsa: @abogado_p.ipsa, nombre: @abogado_p.nombre, telefono: @abogado_p.telefono }
    end

    assert_redirected_to abogado_p_path(assigns(:abogado_p))
  end

  test "should show abogado_p" do
    get :show, id: @abogado_p
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abogado_p
    assert_response :success
  end

  test "should update abogado_p" do
    patch :update, id: @abogado_p, abogado_p: { apellido: @abogado_p.apellido, cedula: @abogado_p.cedula, direccion: @abogado_p.direccion, integer: @abogado_p.integer, ipsa: @abogado_p.ipsa, nombre: @abogado_p.nombre, telefono: @abogado_p.telefono }
    assert_redirected_to abogado_p_path(assigns(:abogado_p))
  end

  test "should destroy abogado_p" do
    assert_difference('AbogadoP.count', -1) do
      delete :destroy, id: @abogado_p
    end

    assert_redirected_to abogado_ps_path
  end
end
