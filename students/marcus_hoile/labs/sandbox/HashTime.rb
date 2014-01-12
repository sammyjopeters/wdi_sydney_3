# hash time
# define array
puts "A " + "-" * 10
a = ["Anil", "Erik", "Jonathan"]

# return the string Erik
p a[1]


# add my name to the array
a << "Marcus"
p a
a.pop
# or this way
a.push("Marcus")
p a
puts
puts "B " + "-" * 10
puts
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# return string "One"
p h[1]
p h[:two]
p h['two']
# add to hash
h[3] = "Three"
p h
h[:four] = 4
p h

puts
puts "C " + "-" * 10
puts
# data struc
is = {true => "It's true!", false => "It's false"}

# what are the return values
p is[2 + 2 == 4]

# with the string value returned
p is["Erik" == "jonathan"]
p is[9 > 10]
p is[0]
p is["Erik"]

puts
puts "D " + "-" * 10
puts

# data
users = {
	"Jonathan" => {
		:twitter => "tronathan",
		:favorite_numbers => [12, 42, 75],
	},
	"Erik" => {
		:twitter => "sferik",
		:favorite_numbers => [8, 12, 24],
	},
	"Anil" => {
		:twitter => "bridgepad",
		:favorite_numbers => [12, 14, 85],
	},
}

p users["Jonathan"][:twitter]
users["Erik"][:favorite_numbers] << 7
p users["Erik"][:favorite_numbers]
# users["Marcus"] = {
#	:twitter = "Molly",
#	:favorite_numbers = [3, 33, 35]
#}
users["Marcus"] = {}
users["Marcus"][:twitter] = "Moile"
users["Marcus"][:favorite_numbers] = [3, 33, 333]
p users 

#smallest of eriks's numbers
p users["Erik"][:favorite_numbers].sort.shift

new_array = []
users["Anil"][:favorite_numbers].each do |x|

	if x % 2 == 0
		new_array.push(x)
	end
end
p new_array

common_nums = users["Jonathan"][:favorite_numbers] & users["Erik"][:favorite_numbers] & users["Anil"][:favorite_numbers]
p common_nums

all_favs = users["Jonathan"][:favorite_numbers] + users["Erik"][:favorite_numbers] + users["Anil"][:favorite_numbers]
p all_favs.sort.uniq








