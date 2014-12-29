class Timer
	attr_accessor :seconds, :time_string

	def seconds(num = 0)
		num
	end

	def time_string
		
		if @seconds > 3600
		hours = @seconds / 3600
		minutes = ((@seconds - 3600) / 60)
		seconds = ((@seconds - 3600) % 60)
		
		end 

		if @seconds < 3600
			hours = @seconds / 3600
			minutes = (@seconds / 60)
			seconds = (@seconds % 60)
		end

		if hours < 10
			hours = "0" + hours.to_s
		else
			hours = hours.to_s
		end

		if minutes < 10
			minutes = "0" + minutes.to_s
		else
			minutes = minutes.to_s
		end

		if seconds < 10
			seconds = "0" + seconds.to_s
		else
			seconds = seconds.to_s
		end

		"#{hours}:#{minutes}:#{seconds}"
	end

end