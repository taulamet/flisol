require 'test_helper'

class InicioControllerTest < ActionController::TestCase

  test "should get index if no edicions" do
    Edicion.delete_all
    get :index
    assert_response :success
  end

  test "should get index if no actual edicions" do
    Edicion.delete_all
    edicion_anterior = Edicion.create(nombre: "2013", actual: false)
    edicion_anterior = Edicion.create(nombre: "2012", actual: false)
    get :index
    assert_response :success
  end

  test "should rectirect to edicion actual if exists" do
    Edicion.delete_all
    edicion_anterior = Edicion.create(nombre: "2013", actual: false)
    edicion_actual = Edicion.create(nombre: "2014", actual: true)
    # assert_routing "inicio/index", controller: 'edicions', action: 'ver', nombre: edicion_actual.nombre
    get :index
    assert_redirected_to controller: 'edicions', action: 'ver', nombre: edicion_actual.nombre
  end
end
