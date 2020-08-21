def substring(string, array)
    str = string.downcase
    hash = Hash.new(0)
  
    selected_word = array.select {|word| str.include? word}
    selected_word.each do |word|
      hash[word] = str.scan(word).length
    end
    p hash
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  substring("Howdy partner, sit down! How's it going?", dictionary)