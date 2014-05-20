# x = File.open(from_file)
# y = x.read()
# z = File.open(to_file, 'w')
# z.write(y)

# replace variables

# y = File.open(from_file).read()
# z = File.open(to_file, 'w').write(y)

from_file, to_file = ARGV; File.open(to_file, 'w').write(File.open(from_file).read())

# File.open(ARGV[1], 'w').write(File.open(ARGV[0]).read()) #alternative solution