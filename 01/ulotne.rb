require 'securerandom'
class MyThread < ::Thread; end

def delay
  15
end

def run
  loop { work }
rescue Exception => e
  puts "#{Time.now} Exception"
ensure
  puts "#{Time.now} stopping agent"
end


def work
  puts "#{Time.now} start work"
  10_000_000.times { SecureRandom.hex }
  puts "finished work"
rescue StandardError => e
  puts "#{Time.now} Error"
ensure
  puts "#{Time.now} start sleep"
  sleep(delay)
  puts "#{Time.now} finished sleep"
end

t = MyThread.new{ run }

at_exit do
  puts "#{Time.now} killing thread"
  Thread.kill(t)
  puts "#{Time.now} killed thread"
end

sleep(10)
exit
