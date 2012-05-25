require 'test/unit'
require 'kidomath'

class KidoMathTest < Test::Unit::TestCase
  def test_KidoMath_start
    assert_not_nil KidoMath.start
  end
end
