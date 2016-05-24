require_relative 'Operations'
class Unaria < Operations
	attr_accessor :operando

		def add_operand(operand)
			@operando = operand
		end
end