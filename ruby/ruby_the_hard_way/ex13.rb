first, second, third = ARGV

puts "The script is called: #{$0}"
puts "We are using gets.chomp to get our variables"

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

first = STDIN.gets.chomp()
puts "Your first variable is: #{first}"

second = STDIN.gets.chomp()
puts "Your second variable is: #{second}"

third = STDIN.gets.chomp()
puts "Your third variable is: #{third}"
