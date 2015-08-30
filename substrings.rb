def substrings phrase, substring_list
  #turn phrase into an array
  words = phrase.split
  matches = {}

  #iterate through each phrase word for each substring
  substring_list.each do |substring|
    frequency = 0

    words.each do |word|
      #returns [] when there is no match and [substring]
      #when matched with word; also add to frequency
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
