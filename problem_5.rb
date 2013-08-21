# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

DIVISORS = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11]

def evenly_divisible?(dividend)
  DIVISORS.all?{|divisor| dividend%divisor == 0}
end

t = Time.now
i = 21
while(!evenly_divisible?(i))
  i+=1
end

prime_numbers = [2,3,5,7,11,13,17,19]

def factors(num)
  facts = {}

  prime_numbers.each do |pn|
    if num%pn
      
    end
  end
end


p "#{i} in #{Time.now - t} secs"