#write your code here
def echo phrase
	phrase
end

def shout phrase
	phrase.upcase
end

def repeat phrase, num_of_repeats = 2
	arr = []

	num_of_repeats.times do
		arr.push(phrase)
	end

	arr.join(" ")
end

def start_of_word phrase, num_of_letters
	phrase[0...num_of_letters]
end

def first_word phrase
	words = phrase.split(" ")
	words[0]
end

def titleize phrase
	old_phrase = phrase.split(" ")
	new_phrase = []
	little_words = ["a", "an", "and", "as", "at", "but", "by", "for", "from", "in", "nor", 
		"of", "on", "or", "over", "so", "the", "to", "under", "up", "with", "without"]
	exclude = [0, old_phrase.length - 1]
	length = 0

	old_phrase.length.times do
		if (not exclude.include?(length) and little_words.include?(old_phrase[length]))
			new_phrase.push(old_phrase[length])
		else
			new_phrase.push(old_phrase[length].capitalize)
		end

		length += 1
	end

	new_phrase.join(" ")
end
