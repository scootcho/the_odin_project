class Book

def title 
  @book
end


def title=(word)
  conjunctions = "and but or nor for yet so".split 
  propositions = "in of at as".split
  articles = "the a an".split

  @book = word.split.map {|w| conjunctions.include?(w) || propositions.include?(w) || articles.include?(w) ? w : w.capitalize }.join(" ")
  @book[0] = @book[0].capitalize
end

end
