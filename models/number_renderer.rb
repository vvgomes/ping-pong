class NumberRenderer

	def render number
		return 'p*ng' if number.multiple_of?(3) && number.multiple_of?(5) 
		return 'ping' if number.multiple_of?(3)
		return 'pong' if number.multiple_of?(5)
		number.to_s
	end

end

class Integer
	
	def multiple_of? factor
		(self % factor) == 0
	end	

end