# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

number = 600851475143

i = 1
prime = []
prime_mult = 1
t = Time.now
while(prime_mult != number)
	if((number%i) == 0)
		prime << i
		prime_mult *= i
	end
	i +=2
end
# p prime.last
p "#{prime.last} Total Time: #{(Time.now - t)*1000000000} nano secs"
# "Total Time: 209000.0 nano secs"