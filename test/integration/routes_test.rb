require 'test_helper'

class RoutesTest < ActionDispatch::IntegrationTest
  test "inicio should reditect to root" do
    assert_generates "/inicio", :controller => "inicio", :action => "index"
  end
end
