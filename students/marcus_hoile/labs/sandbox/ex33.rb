def numnum(max, inc)

i = 0 
numbers = []

for i in (0..max)
	puts "At the top i is #{i}"
	numbers.push(i)

	
	puts "Numbers now: #{numbers}"
	puts "At the bottom i is #{i}"
end

puts " The numbers: "

for num in numbers
	puts num
end
end

numnum(10, 3)