from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
input = File.open(from_file)
indata = input.read()

puts "Then input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"  #this just check if exist, will write new file regardless
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "alright, all done."

output.close()
input.close()