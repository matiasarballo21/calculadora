require_relative 'Operations'
class Binaria < Operations
	attr_accessor :operando_1 , :operando_2
		def add_operand(operand)
			@operando_1 = operand if @operando_1.nil?
			@operando_2 = operand unless @operando_1.nil?
		end
end  