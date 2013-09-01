def binary_search(list, key)
  index = list.size/2
  end_of_list = list.size
  steps = 0
  (0..(list.size/2)).each do |i|
    steps += 1
    
    # p "steps: #{steps}"
    # p "index: #{index}"
    # p "end_of_list: #{end_of_list}"

    if key < list[index]
      end_of_list = index
      index = index/2
    elsif key > list[index]
      index = (index + end_of_list)/2
    else
      return list[index]
    end

  end

end

p binary_search((1..100).to_a, 9)
