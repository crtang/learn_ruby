#write your code here

def translate phrase
	vowels = "aeiou"
	words = phrase.split(" ")
	i = 0
	first_vowel = 0
	consonants = []
	pig_latin = []

	puts words

	words.each do |word|
		until vowels.include?(word[i]) do
			consonants.push(word[i])
			first_vowel += 1
			i += 1

			if consonants[-1] == "q"
				consonants.push(word[i])
				first_vowel += 1
				i += 1
			end
		end

		pig_latin.push(word[first_vowel..-1] + consonants.join + "ay")
		
		i = 0
		first_vowel = 0
		consonants = []
	end

	puts pig_latin

	pig_latin.join(" ")
end
