require 'test_helper'

class RoutesTest < ActionDispatch::IntegrationTest
  test "inicio should reditect to root" do
    assert_generates "/inicio", :controller => "inicio", :action => "index"
  end

  test "edicion/nombre should redirect to ver action" do
    edicion = edicions(:anterior)
    assert_routing "edicion/#{edicion.nombre}", controller: 'edicions', action: 'ver', nombre: edicion.nombre
  end

end
