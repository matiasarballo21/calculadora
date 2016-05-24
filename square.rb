require_relative 'Unaria'
class Cuadrado < Unaria
	def execute
		@result = Math.SQRT(operand)
	end
end