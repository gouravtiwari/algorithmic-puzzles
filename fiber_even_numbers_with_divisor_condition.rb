# Infinite sequence of even numbers not divisible by 3 and 5

def sequencer(seq)
  count = 0
  fiber = Fiber.new do
    loop do
      Fiber.yield(count) if count % 3 != 0 && count % 5 != 0
      count +=2 
    end
  end

  seq.times{print "#{fiber.resume} "}
end 

sequencer(10)
