class Fraccionario 
	attr_reader :num :den
	def initialize (num, den)
		raise "El numerador no es un número" unless num.is_a?Numeric
		raise "El denominador no es un número" unless den.is_a?Numeric
		@num = num
		@den = den
	end
def +(other)