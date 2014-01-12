# define a method to create a fibonnaci array
def fib_up_to(max_num)
	capture_arr = []
	i1, i2 = 1, 2
	while i2 <= max_num
		capture_arr.push(i2)	
		i1, i2 = i2, i1 + i2
	end
 capture_arr
end
sum2 = 0
fib_up_to(4_000_000).each do |a| 
	if a % 2 == 0
		sum2 += a 
	end
end
puts sum2









