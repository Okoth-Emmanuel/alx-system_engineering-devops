#!/usr/bin/env ruby

# Define the regular expression pattern
pattern = /[A-Z]/

# Check if the argument is provided
if ARGV.empty?
  puts "Usage: ruby script_name.rb <string>"
  exit
end

# Get the argument
input_string = ARGV[0]

# Match the input string against the pattern
matches = input_string.scan(pattern)

# Print the matched capital letters
puts matches.join
