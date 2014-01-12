# printing out 1 to 100
puts *(1..100)

# creating an array of my fav things
fav_things = ["Music", "Snow", "Beach", "Beer", "Travel"]
fav_things.each { |x| puts x}

# this is to print hello name
def greet(name)
	puts "Hello #{name}!"
end
greet("Marcus")

# method that doubles any number
def double(num)
	puts num*2
end
double(43)

# method to detect whether a number is even or not
def is_even?(num)
	if num % 2 == 0
		puts "It's even!"
	else
		puts "it's an odd number!"
	end
end

is_even?(42)


# the fizzbuzz exercise
fizzbuzz = *(1..100)

fizzbuzz.each do |n|
  if n % 15 == 0
    puts "FizzBuzz"
  elsif n % 5 == 0
    puts "Buzz"
  elsif n % 3 == 0
    puts "Fizz"
  else
    puts n
  end
end

