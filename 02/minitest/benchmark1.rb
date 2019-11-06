require "minitest/autorun"
require "minitest/benchmark"
def my_algorithm(n)
  puts n
  n
end
describe "Sample Benchmark" do
  bench_performance_constant "my_algorithm", 0.9999 do |n|
    5.times do
      my_algorithm(n)
    end
  end
end
