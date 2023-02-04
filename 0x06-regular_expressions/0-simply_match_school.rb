#!/usr/bin/env ruby

# Define the regular expression pattern to match 'School'
pattern = /School/

# Get the argument passed to the script
arg = ARGV[0]

# Pass the argument to the regular expression matching method
result = arg.match(pattern)

# Check if the argument matches the pattern
if result
  puts "#{arg} matches the pattern #{pattern}"
else
  puts "#{arg} does not match the pattern #{pattern}"
end
