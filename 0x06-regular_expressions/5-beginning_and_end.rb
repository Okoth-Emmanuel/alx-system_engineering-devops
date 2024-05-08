#!/usr/bin/env ruby

# Define the regular expression pattern
pattern = /^h.n$/

# Check if the argument is provided
if ARGV.empty?
  puts "Usage: ruby script_name.rb <string>"
  exit
end

# Get the argument
input_string = ARGV[0]

# Match the input string against the pattern
if input_string.match?(pattern)
  puts input_string
else
  puts "No match"
end
