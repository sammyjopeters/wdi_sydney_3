# require 'fileutils'
# use ruby to create directories
# check DT's code on github repository

# FileUtils.mkdir
# FileUtils.chdir
def factorial(num)
	(1..num).reduce(:*)
end


something = Proc.new { |x| puts x * 2 }
something.call(324)

def mult_make(mult)
	Proc.new { |x| x * mult }
end

# this create a proc from method above
mult5 = mult_make(5)

p mult5.call(2345)