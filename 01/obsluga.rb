# 1
# Don't do this 
begin
  do_something()
rescue Exception => e
  ...
end

# 2
begin
  do_something()
rescue => e
  # This is the same as rescuing StandardError
end

# 3
begin
  do_something()
rescue Errno::ETIMEDOUT, Errno::ECONNREFUSED => e
end
