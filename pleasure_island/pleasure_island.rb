require 'time'
 
require 'benchmark'
include Benchmark
 
 
hny = [10,9,8,7,6,5,4,3,2,1, 0.to_s + " ..." + " Happy New Year!"]
 
def counter
	time = 0
	time += Benchmark.realtime { "a"*1_000_000 } until time >= 1
	yield
end
 
puts ""
 
puts hny
 
puts ""
puts "Immediate above/Timed below (per second)"
puts ""
 
p hny[0] 
p counter { hny[1]} 
p counter { hny[2]} 
p counter { hny[3]} 
p counter { hny[4]} 
p counter { hny[5]} 
p counter { hny[6]} 
p counter { hny[7]} 
p counter { hny[8]} 
p counter { hny[9]} 
p counter { hny[10]} 
 
puts ""


# experiments with Time.now - ain't happening 
# step method didn't work with ruby 2.1.1
######
# def count_down
# 	i = 0
# 	t = Time.now
# 	if Time.now + 0.5 <= t + 1 && i <= hny.size
# 		puts "hi"
# 		i+=1
# 		counter
# 	elsif 
# 		Time.now + 10.5 <= t + 10
# 		puts "Happy pup year!!"
# 	else
# 		puts "Sorry - YpuppyK error."
# 	end
# end    