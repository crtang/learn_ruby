class Book
# write your code here
	attr_writer :title

	def title
		words = @title.split(" ")
		i = 0
		capitalized = []
		excluded = ["a", "an", "and", "as", "but", "for", "if", "in", "nor", "of", "or", "the", "with", "yet"]
		
		while i < words.length
			if i != 0 and i != words.length - 1 and excluded.include?(words[i])
				capitalized.push(words[i])
			else
				capitalized.push(words[i].capitalize)
			end

			i += 1
		end

		@title = capitalized.join(" ")

		@title
	end

end
