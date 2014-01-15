# # a * b = c


class Integer
  def palindromic?
    digits = self.to_s.split('')
    return digits == digits.reverse
  end
end

max = 0
(100..999).each do |a|
  (a..999).each do |b|
    product = a * b
    if product > max && product.palindromic?
      max = product
    end
  end
end
puts max

# # require 'matrix'
# # def times_table(n)
# #   Array.build(n, n) { |r, c| (c+1)*(r+1) }
# # end
# # product_arr = []
# # product_arr << times_table(999)
# # p product_arr.flatten(1)

# #palindrome = c
# array = []
# for i in (100000..999999)
# 	c = i.to_s
	
#   if c[0] == c[5] && c[1] == c[4] && c[2] == c[3]
#   	array.push(c)
#   end
# end

# for i in (10000..99999)
# 	c = i.to_s

# 	if c[0] == c[4] && c[1] == c[3]
# 		array.push(c)
# 	end
# end
# array

# #array & times_table(999)


# # product_arr = []
# # product1 = *(100..999)
# # product2 = [100..999]

# # a = 100
# # while a < 1000
# # product_arr << product1.each { |b| b * a }
# # a += 1
# # end


# # # p product1.each.map { |x| x * (product2.each { |y| y })}
# # # for i in product1
# # # 		product_arr = product2.map { |i| i
# # # 		product_arr.push(product)
# # # 	end
# # # 	product_arr
# # # end
# # p product_arr

# def find_max_palindrome(min=100, max=999)
# 	max_palindrome = 0
# 	for x in (100..999)

# def product_into_array(x, y)
# 		y**y 




# # a = [1, 3, 4, 5]
# # b = [4, 2, 1, 7 ,8 ,9 ]
# # p a & b

# # answer_array = []
# # (product_arr & array).each { |chk| answer_array.push(chk) }
# # p answer_array