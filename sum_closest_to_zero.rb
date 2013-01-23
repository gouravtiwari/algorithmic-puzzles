# Given an array of integers, find two integers, whose sum is closest to zero

# This is O(n) solution
def closest_to_zero(list)
	list = list.combination(2).map{|e| e unless e[0] == e[1]}
	sum = {}
	list.each do |item|
		sum[item[0] + item[1]] = item
	end

	# keeping output to a very large no. initially
	output = {1000000 => [500000,500000]}
	
	sum.each{ |key, value|
		output = {key => value} if key.abs < output.first.first.abs && key.abs >= 0
	}

	output
end

# Example:
list = (-20..-10).to_a + (5..10).to_a
p closest_to_zero(list)