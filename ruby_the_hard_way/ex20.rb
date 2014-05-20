input_file = ARGV[0]				#argv takes the virst variable from the commandline "test.txt"

def print_all(f)			
	puts f.read()
end

def rewind(f)
	f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, f)
	puts " #{line_count} #{f.readline()}"
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

# Q: How does readline() go from line 2 to 3?
# A: OS keeps track of a "pointer", kind of like the read head on a cassette tape. When you read a line, it advances forward by the amount.
# 	 Think of it like an old VHS tape or cassette tape. If you read some, then it rolls forward to the next spot to read. If you want to read the beginning then you have to "rewind". Only thing is a computer can do this really fast, but most of the file operations are based on old tape drives.