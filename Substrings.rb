def substrings(words, dict)
	word_count = {}
	words = words.split(" ")
	words.each do |word|
		dict.each do |sub|
			if word.downcase.include?(sub)
				if word_count[sub] == nil
					word_count[sub] = 1
				else
					word_count[sub] += 1
				end
			end
		end
	end
	word_count = word_count.sort
	return word_count
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
sentence = "Howdy partner, sit down! How's it going?"
substrings(sentence, dictionary)