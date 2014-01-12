# prime number
number = 600851475143
# largest_prime = 0

require 'prime'

# create an array of prime numbers up to max
prime_list = []
Prime.each(number) do |prime|
	prime_list.push(prime)
end
p prime_list


# get all the factors of a number
 def factors_of(num)
    (1..num).collect { |n| [n, num/n] if ((num/n) * n) == num}.compact
 end
 p factors_of(number)

=begin
answer = 0
prime_list.each do |p2|
	if num % p2 == 0
	answer = p2
	end

end
p answer

# run each value in array and check with it is divisible with num
=end

