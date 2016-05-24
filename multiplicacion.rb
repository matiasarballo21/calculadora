require_relative 'Binaria'
class Multiplicacion < Binaria
	def execute
		@result = @operando_1 * @operando_2
	end
end