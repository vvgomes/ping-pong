class NumberRenderer

	def render number
		return 'ping' if multiple_of?(3, number)
		return 'pong' if multiple_of?(5, number)
		number.to_s
	end

	private
	
	def multiple_of? factor, n
		(n % factor) == 0
	end	

end