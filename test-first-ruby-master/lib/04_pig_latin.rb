def helper (word)
	letters  = word.split('')
	vowels = ["a", "e", "i", "o", "u"]
	first_vowel = word.length

	return letters.join + "ay" if vowels.include?(letters[0])

	if word[0..1] == "qu"
		word.slice!(0..1)
		return word + "quay"
	end

	if word[1..2] == "qu"
		beg = word.slice!(0..2)
		return word + beg + "ay"
	end

	vowels.each do |x|
		if word.index(x) != nil && word.index(x) < first_vowel
			first_vowel = word.index(x)
		end
	end

	beg = word.slice!(0...first_vowel)

	return word + beg + "ay"
end

def translate(str)

words = str.split

words.map { |word| helper(word)}.join(' ')

end






		
	

