require_relative 'Unaria'
class RaizCuadrada < Unaria
	def execute
		@result = sqrt(@operando)
	end
end