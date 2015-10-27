require "lib/frac.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
    def setup
    @fracional1 = Fraccionario.new(-5,4)
    @fracional2 = Fraccionario.new(13,4)
end
    def test_suma
		assert_equal("2/1", (@fracional1+@fracional2).to_s)
	end
    def test_resta
       assert_equal("-9/2",(@fracional1-@fracional2).to_s) 
    end
    def test_mult
        assert_equal("-65/16",(@fracional1*@fracional2).to_s)
    end
    def test_div
        assert_equal("-5/13",(@fracional1/@fracional2).to_s)
    end
    def test_suma_propio
        assert_equal("13/2",(+@fracional2).to_s)
    end
    def test_resta_propio
        assert_equal("0",(-@fracional1).to_s)
    end
end