#!/usr/bin/env ruby
# Get the argument passed to the script
input = ARGV[0]

# Define the regular expression pattern
pattern = Oniguruma::ORegexp.new('\hbtn\b')

# Match the input against the pattern
match = pattern.match(input)

# Print the matched result
puts match ? match[0] : ""
