require_relative 'Suma' 
require_relative 'Resta' 
require_relative 'Multiplicacion' 
require_relative 'Division' 
require_relative 'Inverso' 
require_relative 'Cuadrado' 
require_relative 'RaizCuadrada' 
class Calculator

	OPERATIONS = {
			suma: '+',
			resta: '-',
			multiplicacion: '*',
			division: '/',
			inver: 'INV',
			square: 'SQ',
			raiz: 'SQRT'
		}

	def add_operand(operand)
		if @current_operation
			@current_operation.add_operand(operand)
		else
			@operand_temp = operand
		end
	end	
	def set_operation(operand)
		operation_class = case operand
			when OPERATIONS[:suma] then Suma
			when OPERATIONS[:resta] then Resta
			when OPERATIONS[:multiplicacion] then Multiplicacion
			when OPERATIONS[:division] then Division
			when OPERATIONS[:inver] then Inverso
			when OPERATIONS[:square] then Cuadrado
			when OPERATIONS[:raiz] then RaizCuadrada
		end
			@current_operation = operation_class.new(@operand_temp)
			@operand_temp = ''
	end
	def execute
			result = @current_operation.execute
			clear
			result
		rescue ZeroDivisionError
			"Error"
	end
	def clear
		@current_operation = nil
		@operand_temp = nil
	end	
end