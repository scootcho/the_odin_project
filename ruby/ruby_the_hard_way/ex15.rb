filename = ARGV.first

promp = "> "
txt = File.open(filename)

puts "Here's your file: #{filename}"
puts txt.read()

puts "I'll also ask you to type it again:"
print promp
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()
