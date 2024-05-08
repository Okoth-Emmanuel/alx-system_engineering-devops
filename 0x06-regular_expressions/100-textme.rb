#!/usr/bin/env ruby

# Define a method to extract sender, receiver, and flags from log entry
def extract_info(log_entry)
  sender = log_entry.match(/\[from:(.*?)\]/)[1]
  receiver = log_entry.match(/\[to:(.*?)\]/)[1]
  flags = log_entry.match(/\[flags:(.*?)\]/)[1]
  [sender, receiver, flags]
end

# Check if the argument is provided
if ARGV.empty?
  puts "Usage: ruby script_name.rb <log_file>"
  exit
end

# Get the log file path from the argument
log_file_path = ARGV[0]

# Read the log file
log_entries = File.readlines(log_file_path)

# Process each log entry
log_entries.each do |log_entry|
  # Extract sender, receiver, and flags from the log entry
  sender, receiver, flags = extract_info(log_entry)

  # Output the extracted information
  puts "#{sender},#{receiver},#{flags}"
end
