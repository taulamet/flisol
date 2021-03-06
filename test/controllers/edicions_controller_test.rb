require 'test_helper'

class EdicionsControllerTest < ActionController::TestCase
  setup do
    @edicion = edicions(:anterior)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edicions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edicion" do
    assert_difference('Edicion.count') do
      post :create, edicion: { actual: false, nombre: "nombre" }
    end

    assert_redirected_to edicion_path(assigns(:edicion))
  end

  test "should not create edicion with duplicated nombre" do
    assert_no_difference('Edicion.count') do
      post :create, edicion: { actual: false, nombre: @edicion.nombre }
    end
  end

  test "should show edicion" do
    get :show, id: @edicion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edicion
    assert_response :success
  end

  test "should update edicion" do
    patch :update, id: @edicion, edicion: { actual: @edicion.actual, nombre: @edicion.nombre }
    assert_redirected_to edicion_path(assigns(:edicion))
  end

  test "should destroy edicion" do
    assert_difference('Edicion.count', -1) do
      delete :destroy, id: @edicion
    end

    assert_redirected_to edicions_path
  end


  test "should ver edicion" do
    get :ver, nombre: @edicion.nombre
    assert_response :success
  end

end
