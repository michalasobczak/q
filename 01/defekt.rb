begin
  # Any exceptions in here... 
  1/0
rescue
  # ...will cause this code to run
  puts "Got an exception, but I'm responding intelligently!"
  do_something_intelligent()
end

# This program does not crash.
# Outputs: "Got an exception, but I'm responding intelligently!"
