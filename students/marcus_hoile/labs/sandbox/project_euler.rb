
# create a method for multiples
def multiples(num1, num2, max_num)
	array = []
	for i in (1..max_num)
		if i % num1 == 0
		  array.push(i)
		elsif i % num2 == 0
			array.push(i)
		end
	end
	array.uniq
end

# add each multiple in the array
sum = 0
multiples(3, 5, 999).each { |a| sum+=a }
puts sum

puts "-" * 10

# create a more generic method, using an array
# define the array
array_input = [3, 5, 7]
multis


# re-order so that you have multis.each { |x| multiples(x, max_num)}
# method that takes array as input
def multiples(array_input, max_num)
	array_output = []
# use each method to go through each number in the array
	array_input.each do |x| 
		for i in (1..max_num)
			if i % x == 0
		  	array_output.push(i)
		    end
		end
	end
# use the unique method to take out double ups
	array_output.uniq
end

sum2 = 0
multiples(array_input, 999).each { |a| sum2 += a }
puts sum2

# rewrite above with
def find_multiples(max_num, *args)










