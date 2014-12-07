def echo(word)
  word
end

def shout(word)
  word.upcase()
end

def repeat(word, times=2)
  ([word]*times).join(" ")
end
  
def start_of_word(word, position)
  word[0..position-1]
end 

def first_word(word)
  word.split[0]
end

def titleize(word)
  little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on","over", "to", "up", "and", "as", "but", "it", "or", "and", "nor"]
  arr = word.split

  arr.each { |w| little_words.include?(w) ? w : w.capitalize! }
  arr[0].capitalize!  
  arr.join(" ")
end
