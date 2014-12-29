class Temperature
	def initialize(options = {})
  		@options = options
  		@c = @options[:c]
  		@f = @options[:f]
  	end
	
	def ftoc(num)
		(num-32) * (5.0/9.0)
	end

	def ctof(num)
		num * (9.0/5.0) + 32
	end

	def in_fahrenheit
		@options.key?(:f) ? @f : ctof(@c)
	end

	def in_celsius
		@options.key?(:c) ? @c : ftoc(@f)
	end

	def self.from_celsius(num)
		self.new(:c => num)
	end

	def self.from_fahrenheit(num)
		self.new(:f => num)
	end
end

class Celsius < Temperature
	def initialize(num, options = {})
		@options = options
		@options[:c] = num
		@c = @options[:c]
	end

	def in_celsius
		super
	end

	def in_fahrenheit
		super
	end
end

class Fahrenheit < Temperature
	def initialize(num, options = {})
		@options = options
		@options[:f] = num
		@f = @options[:f]
	end

	def in_celsius
		super
	end

	def in_fahrenheit
		super
	end
end






