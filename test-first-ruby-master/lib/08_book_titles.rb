class Book
	attr_accessor :title

	def title 
		words = @title.split
		downcase_words = %w(the a an and in of)
		idx = 0
		@title = []

		while idx < words.length
			if !(downcase_words.include?(words[idx])) || idx == 0
				@title << words[idx].capitalize
			else
				@title << words[idx]
			end

			idx +=1
		end

		@title.join(' ')

	end
end
