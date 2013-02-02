# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


def palindromic?(number)
  num = number.to_s.split('')
  (1..(num.size/2)).all? do |index|
    num[index-1] == num[index*(-1)]
  end
end

def largest_palindromic
  palindromic_numbers = {:product => 0}

  (100..999).to_a.reverse.each do |i|
  	(100..999).to_a.reverse.each do |j|
  		product = i*j
      if(palindromic_numbers[:product] < product && palindromic?(product))
        palindromic_numbers[:product] = product
        palindromic_numbers[:nums] = [i,j]
      end
  	end
  end
  palindromic_numbers
end

t = Time.now
p largest_palindromic.inspect
p "#{(Time.now - t)} secs"