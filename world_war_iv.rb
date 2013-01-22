#http://www.satyajit-algorithms.com
# World War IV ( Min Coin Change Problem ) Dynamic Programming Basic
# "I know not with what weapons World War III will be fought, but World War IV will be fought with sticks and stones." 
#                                                                                                                                                                                    - Einstein 

# World suffered a great loss due to World War III. World is taken aback to the age when there were no mobiles, no computers, no TV's , no machines. Every nation, religion, community, who survived the war, are in the process of building a new World.

# Two countries "Megaricka" and "Hugeisia" are emerging as new super-powers. There is a huge conflict between these two nations. If the conflict is not resolved, soon the world will suffer from another world war, World War IV. To stop the World War IV, a messenger named Bellman from Hugeisia is sent to Megaricka to sign a peace treaty. Everything went well, but there were few people from Megaricka who were against this treaty. So on the return journey of Bellman, he was held back by these protagonist of Megaricka.

# Now if Bellman does not reach Hugeisia within 20 days, Hugeisia will attack Megaricka which will lead to World War IV. Bellman, being held hostage, could'nt do anything but plan his escape route. After 6 days of planning, Bellman finally planned his escape route. He must return to Hugeisia before the eve of 13th day from next morning. Bellman needs to carry some food with him to survive the next 13 days. Only options left in front of him were 5 fruits. He knew how long he could survive by eating fruit of each type.

# Type of Fruit   |   Mango   |   Pineapple   |   Orange   |   Papaya   |   Apple 
# ------------------------------------------------------------------------------------------------------------------
#  No of days            1                   2                      3                  4                5 
# he can survive  
# ------------------------------------------------------------------------------------------------------------------
# Weight                   1                   2                      3                  4                5 

# Bellman's task was to find the combination of fruits he can carry with him which would weigh less and also at the same time, give him just enough energy to survive for 13 days. He could have tried all the combinations and found out the one which would suffice his need. But that would have taken long.

# He remembered a technique called Dynamic Programming by which he can pick up minimum number of fruits that would let him survive for 13 days.

# "Dynamic Programming : Dynamic programming is a method for solving complex problems by breaking them down into simpler sub-problems. To solve a given problem, we need to solve different parts of the problem (sub-problems), then combine the solutions of the subproblems to reach an overall solution. " 

# Now lets see how Bellman solved this problem. He split the problem of surviving for 13 days .

# To survive 0th day he needs 0 fruits weighing 0 KG.


# To survive 1st day he can select any from the 5 fruits.But if he selects anything but Mango, the weight will also increase, so he selects Mango.


# To survive for 2 days he has 2 choices, 2 Mangoes or 1 Pineapple. In this case he selects 1 Pineapple. If he would have selected 2 Mangoes he would have had to carry two objects with him. So he makes a choice of 1 pineapple.


# Similarly, he makes choices for all days till 13th day.

# Days	Options	Bellman's Choice	Total No of Fruits
# 0	No fruits	0	0
# 1	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 1	1 M	1
# 2	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 2	1 Pi	1
# 3	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 3	1 O	1
# 4	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 4	1 Pa	1
# 5	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 5	1 A	1
# 6	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 6	1 A,1 M	2
# 7	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 7	1 A,1 Pi	2
# 8	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 8	1 A,1 O	2
# 9	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 9	1 A,1 Pa	2
# 10	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 10	2 A	2
# 11	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 11	2 A,1 M	3
# 12	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 12	2 A,1 Pi	3
# 13	Min_Weight (M,Pi,O,Pa,A) & Days_to_survive = 13	2 A,1 O	3

# * M = Mango , Pi = Pineapple , O = Orange , Pa = Papaya , A = Apple

def min_weight(no_of_days_to_survive=13, fruits=[])
 	fruits = fruits.size == 0 ? ['m','pi','o','pa','a'] : fruits
 	fruits_map = {}

 	fruits.each_with_index{|f,i| fruits_map[i+1] = f}

	no_of_best_picks = no_of_days_to_survive / fruits.size
	next_fruit_to_pick = no_of_days_to_survive % fruits.size

	optimum_choices = {fruits_map[fruits.size] => no_of_best_picks}
	optimum_choices[fruits_map[next_fruit_to_pick]] = 1 unless next_fruit_to_pick == 0
	p "minimum weight: #{optimum_choices.values.inject(:+)}"
	optimum_choices
end

(1..13).each do |s|
	p "#{s} : #{min_weight(s).inspect}"
end



