def measure(num = 1)
	start = Time.now
	num.times do
		yield if block_given?
	end
	elapsed_time = Time.now - start
	average_time = elapsed_time/num
end

