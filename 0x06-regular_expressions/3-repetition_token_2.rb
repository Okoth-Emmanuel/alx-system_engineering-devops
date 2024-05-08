#!/usr/bin/env ruby
pattern = /hbn/

# Check if the argument is provided
if ARGV.empty?
  puts "Usage: ruby script_name.rb <string>"
  exit
end

# Get the argument
input_string = ARGV[0]

# Match the input string against the pattern
if input_string.match?(pattern)
  puts "Input string '#{input_string}' matches the pattern '#{pattern}'."
else
  puts "Input string '#{input_string}' does not match the pattern '#{pattern}'."
end
