# encoding: utf-8
require "lib/gcd.rb"


class Fraccionario
	attr_reader :num
	attr_reader :den
	def initialize (num, den)
		raise "El numerador no es un número" unless num.is_a?Numeric
		raise "El denominador no es un número" unless den.is_a?Numeric
		@num = num
		@den = den
	end
	def to_s
		"#{@num}/#{@den}"
	end
    def +(numero)
        num = (@num * numero.den) + (@den * numero.num)
		den = @den * numero.den
		Fraccionario.new(num, den)
	end
end