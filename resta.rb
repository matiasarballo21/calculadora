require_relative 'Binaria'
class Resta < Binaria	
	def execute
		@result = @operando_1 - @operando_2
	end
end