def caesar_cipher(string, cipher)
	characters = string.split("")
	#we only need the remainder if the number entered is too large
	cipher %= 26

	#initialize the array and text output
	text_shift = ""
	characters_shift = []

	characters.each do |character|
		#this block finds and modifies lower/uppercase letters
		character.scan(/[a-z]|[A-Z]/) do |letter|
			cipher_letter = letter.ord + cipher

			#this block helps wrap letters from z to a by looking at their ASCII value
			if (letter.ord < 91 && cipher_letter > 90) || (cipher_letter > 122)
				character = (cipher_letter - 26).chr
			else
				character = cipher_letter.chr
			end
		end

		characters_shift << character
	end

	text_shift = characters_shift.join
	puts text_shift
end

puts "Say anything!"
text = gets.chomp

number = 0
puts "Enter an integer"
#a negative integer is okay since it shifts letters in the 'opposite' direction
#example: -1 % 26 = 25, which still turns 'a' into 'z'
puts "We round down and a non-number produces a 0..."
number = gets.chomp.to_i

caesar_cipher(text, number)
