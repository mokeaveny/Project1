def caesar_cipher(words, shift)
	alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	upper_alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y","Z"]

	words = words.split(" ")
	no_words = words.length
	new_words = ""
	
	for i in 0...no_words
		current_word = words[i]
		word_length = current_word.length
		new_word = ""
		
		for j in 0...word_length
			letter = current_word[j]
			
			if(alphabet.include?(letter))
				letter_index = alphabet.index(letter) # Finds the index of the current letter to be shifted
				theShift = letter_index + shift
				if(theShift > 25)
					theShift = theShift - 26
				end
				shifted_letter = alphabet[theShift]

			elsif(upper_alphabet.include?(letter))
				letter_index = upper_alphabet.index(letter)
				theShift = letter_index + shift
				if(theShift > 25)
					theShift = theShift - 26
				end
				shifted_letter = upper_alphabet[theShift]
			else
				shifted_letter = letter
			end
			new_word = new_word + shifted_letter
		end
	if new_words == ""
		new_words = new_words + new_word
	else
		new_words = new_words + " " + new_word
	end
	end
	puts new_words
	return new_words	
end

caesar_cipher("What a string!", 5)