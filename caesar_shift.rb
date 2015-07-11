def caesar_cipher(string, cipher)
	characters = string.split("")
	cipher %= 26

	text_shift = ""
	characters_shift = []

	characters.each do |character|
		character.scan(/[a-z]|[A-Z]/) do |letter|
			cipher_letter = letter.ord + cipher

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

number = -1
until number >= 0
	puts "Enter a number greater than or equal to 0"
	number = gets.chomp.to_i
end

caesar_cipher(text, number)
