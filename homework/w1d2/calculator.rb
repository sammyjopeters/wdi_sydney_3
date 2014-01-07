# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts 'What operations do you wanna do?'
  basic_calc
end


# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide, (adv)vanced, (q)uit: "
  input = gets.chomp

  result = 0
  
  case input
  when "a"
  	numbers = ask2_numbers
  	puts numbers[0] + numbers[1]
  when "s"
  	numbers = ask2_numbers
  	puts numbers[0] - numbers[1]
  when "m"
  	numbers = ask2_numbers
  	puts numbers[0] * numbers[1]
  when "d"
  	numbers = ask2_numbers

  	if numbers[1] == 0
  		puts "You can't divide by 0"
  		return result
  	end

  	puts numbers[0] / numbers[1]
  when "q"
  	result = "q"
  when "adv"
  	result = advanced_calc
  else
  	puts "I'dont know this operation"
  end

  result

end

def ask_number(position = "")
	print "Give me the #{position} number: "
	gets.chomp.to_f
end

def ask2_numbers
	first_num = ask_number("first")
  	second_num = ask_number("second")
  	[first_num, second_num]
end

def advanced_calc
  print "(p)ower, (s)qrt, (b)ack, (q)uit: "
  input = gets.chomp

  result = 0
  case input
  when "p"
  	numbers = ask2_numbers
  	puts numbers[0] ** numbers[1]
  when "s"
  	number = ask_number()
  	puts Math.sqrt(number)
  when "b"
  	basic_calc
  when "q"
  	result = "q"
  else
  	puts "I don't know this operation"
  end
end


response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'

  response = menu
end