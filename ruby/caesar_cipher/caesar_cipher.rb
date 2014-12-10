#http://en.wikibooks.org/wiki/Ruby_Programming/ASCII
#Note: per ASCII, each character is represented by a number between 0 and 127.
#uppercase characters A-Z(#65-90), lowercase characters a-z(#97-#122).

def caesar_cipher(phrase, shift)
 
  #take remainder in a 26 character cycle
  shift = shift % 26

  #since we'll using ASCII as the base for the shift, we'll treat lowercase and uppercase characters separately. 
  alphabet_lc = ("a".."z").to_a
  alphabet_uc = ("A".."Z").to_a 

  #takes a phrase lowercase then calculate its ascii value excluding special characters
  #use .ord and .chr methods to convert between ASCII and Character
  lc_converted = phrase.chars.map {|c| alphabet_lc.include?(c) ? (lc_loop(c.ord + shift).chr) : c }

  convert_capital = lc_converted.map {|c| alphabet_uc.include?(c) ? (uc_loop(c.ord + shift).chr) : c }.join("")
end

#Note that we have below two methods to loop back from a/A if the shift pushes the characters beyond z/Z. 

#A-Z (65-90)
def uc_loop(n)
  n > 90 ? n % 90 + 64 : n
end

#a-z (97-122)
def lc_loop(n)
  n > 122 ? n % 122 + 96 : n
end


