#hash for the N-line - key is the literal name (which is matched by user input) and its' value is the stop distance from the intersection (union square)
N = { "34th" => 3, "28th" => 2, "23rd" => 1, "union" => 0, "8th" => -1 }

#hash for L line
L = { "8th" => 2, "6th" => 1, "union" => 0, "3rd" => -1, "1st" => -2 }

#hash for Six line!
S = {"grand" => 3, "33rd" => 2, "28th" => 1, "union" => 0, "aston" => -1 }


def how_many_stops(lineStart, stationStart, lineFinish, stationFinish)

# the hashes I declare above use single character names (which ruby doesn't like to swap with variables)
# by using .clone, the variables lineStart or lineFinish will now become a copy of the relevant hash itself. 
# THis makes the hash data available whereever I declare Linestart or linefinish. AMAZEBALLS

case lineStart
	when "N"
		lineStart = N.clone
	when "L"
		lineStart = L.clone
	when "S"
		linestart = S.clone
end

case lineFinish
	when "N"
		lineFinish = N.clone
	when "L"
		lineFinish = L.clone
	when "S"
		lineFinish = S.clone
end

#check to make sure that the start and finish lines are the same.
if lineStart == lineFinish
		#if so, use a particular formula to ensure we get a positive number
		result = (lineStart[stationStart] - lineFinish[stationFinish]).abs
		#puts "The answer is #{sameLineResult}"

	else
		#otherwise, we use the opposite formula to allow us to count AHEAD or BACKWARDS from the intersection.
		result = lineStart[stationStart].abs + lineFinish[stationFinish].abs
		#puts "The answer is #{multiLineResult}"


end






end


puts "starting line N, L, S"
lineStart = gets.chomp.upcase!

puts "starting station (just enter the damn thing)"
stationStart = gets.chomp

puts "ending line N, L, S"
lineFinish = gets.chomp.upcase!

puts "ending station (just enter the damn thing)"
stationFinish = gets.chomp

#run the method to get it all rolling!
how_many_stops(lineStart, stationStart, lineFinish, stationFinish)