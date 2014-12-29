def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str,t = 2)
	words = []

	t.times do 
	words << str
	end

	words.join(' ')
end

def start_of_word(str,num)
	str[0..num-1]
end

def first_word(str)
	str.split[0]
end

def titleize(str)
	words = str.split
	little_words = ["and", "the", "over"]
	title = []
	idx = 0

	while idx < words.length

		if !(little_words.include?(words[idx])) || idx == 0
			title << words[idx].capitalize
		else
			title << words[idx]
		end

		idx += 1

	end

	title.join(' ')
end








