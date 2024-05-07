#!/usr/bin/env ruby
# Get the argument passed to the script
input = ARGV[0]

# Define the regular expression pattern
pattern = /\bSchool\b/

# Match the input against the pattern
match = input.match(pattern)

# Print the matched result
puts match ? match[0] : ""
