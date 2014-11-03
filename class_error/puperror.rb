class PupError < StandardError
  puts "Error: The Puppy is no longer happy. He doesn't want to run in infinite loops."
end

def run
	puts "waggle and run."
end

p = PupError.new

i = 0
begin
  run
  puts ""
rescue p
  i += 1
  retry unless i > 10
  exit -1
ensure
   puts "Looped #{i} times."
end