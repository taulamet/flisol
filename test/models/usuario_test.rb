require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_valid_params
    usuario = usuarios(:rms)
    assert usuario.valid?
  end

  def test_invalid_without_email    
    usuario = Usuario.new(email: "")
    refute usuario.valid?
  end


end
