require 'benchmark'
include Benchmark
 
 
hny = [10,9,8,7,6,5,4,3,2,1, 0.to_s + " ..." + " Happy New Year!"]
 
def counter
	time = 0
	time += Benchmark.realtime { "a"*1_000_000 } until time >= 1
	yield
end
# refactors multiple method calls
hny2 = hny[1..10]

puts hny.first
hny2.each do |tick|
	p counter { tick }
end