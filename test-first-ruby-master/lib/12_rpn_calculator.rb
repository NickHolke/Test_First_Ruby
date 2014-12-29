class RPNCalculator

	def initialize
		@calculator = []
	end

	def push(num)
  		@calculator << num
	end

	def value
  		@calculator.last
    end

	def plus
 		if @calculator.length >= 2
  			current_value = @calculator.pop + @calculator.pop
  			@calculator.push(current_value)
  		else
  			raise "calculator is empty"
    	end
	end

	def minus
  		if @calculator.length >= 2
  			current_value = @calculator[-2] - @calculator[-1]
  			@calculator.pop
  			@calculator.pop
  			@calculator.push(current_value)
		else 
  			raise "calculator is empty"
  		end
  	end

	def times
  		if @calculator.length >= 2
  			current_value = @calculator[-2] * @calculator[-1].to_f
  			@calculator.pop
  			@calculator.pop
  			@calculator.push(current_value)
		else
  			raise "calculator is empty"
  		end
	end

	def divide
  		if @calculator.length >= 2
  			current_value = @calculator[-2] / @calculator[-1].to_f
  			@calculator.pop
  			@calculator.pop
  			@calculator.push(current_value)
		else 
  			raise "calculator is empty"
		end
	end
end
