# encoding: utf-8
require "lib/gcd.rb"


class Fraccionario
	attr_reader :num
	attr_reader :den
	def initialize (num, den)
		@num = num
		@den = den
		simplificar
	end
	def gcd(num, den)
		num, den = num.abs, den.abs
		while dev > 0
			num, den = den, num % den
		end
		num
	end
	def simplificar
		simp = @num.gcd(@den)
		@num = @num/simp
		@den = @den/simp	
	end
	def to_s
		"#{@num}/#{@den}"
	end
    def +(numero)
        num = (@num * numero.den) + (@den * numero.num)
		den = @den * numero.den
		Fraccionario.new(num, den)
	end
	def -(numero)
		num = (@num * numero.den) - (@den * numero.num)
		den = @den * numero.den
		Fraccionario.new(num, den)
	end
	def *(numero)
		num = @num*numero.num
		den = @den*numero.den
		Fraccionario.new(num,den)
	end
	def /(numero)
		num = @num*numero.den
		den = @den*numero.num
		Fraccionario.new(num,den)
	end
	def +@
		num = @num+@num
		den = @den
		Fraccionario.new(num,den)
	end
	def -@
		num = @num-@num
		den = @den
		Fraccionario.new(num,den)
	end
end