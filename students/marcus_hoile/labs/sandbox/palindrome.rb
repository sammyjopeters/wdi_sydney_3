# a * b = c

# palindrome = c
array = []
for i in (100000..999999)
	c = i.to_s
	
  if c[0] == c[5] && c[1] == c[4] && c[2] == c[3]
  	array.push(c)
  end
end
p array
for i in (10000..99999)
	c = i.to_s

	if c[0] == c[4] && c[1] == c[3]
		array.push(c)
	end
end
p array

# p array
# product_arr = []
# x = [100..999]
# [100..999].each { |i| i * x }
# product_arr 
for i in 100..999
	(for x in 100..999
		product = i * x
		product_arr.push(product)
	end
	product_arr
end

a = [1, 3, 4, 5]
b = [4, 2, 1, 7 ,8 ,9 ]
p a & b

# answer_array = []
# (product_arr & array).each { |chk| answer_array.push(chk) }
# p answer_array