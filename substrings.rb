def substrings phrase, substring_list
	words = phrase.split
	matches = {}

	substring_list.each do |substring|
		frequency = 0

		words.each do |word|
			result =  word.downcase.scan(substring.downcase)
			frequency += 1 if result != []
		end

		matches[substring] = frequency if frequency > 0
	end

	puts matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
