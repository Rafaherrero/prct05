require "lib/frac.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
    def setup
    @fracional1 = Fraccionario.new(5,4)
    @fracional2 = Fraccionario.new(13,4)
end
    def test_suma
		assert_equal("9/2", (@fracional1+@fracional2).to_s)
	end

end