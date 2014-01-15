class Robot
	attr_accessor :name, :mac_address, :count, :create_time, :reboot_time
	def initialize
		@name ||= prefix + suffix
		@mac_address = object_id
		@count = 0
		@create_time = Time.now
		@reboot_time = nil
	end

	def prefix
		('A'..'Z').to_a.shuffle[0,2].join
	end

	def suffix
		('0'..'9').to_a.shuffle[0,3].join
	end

	def print_name
		puts "#{name}"
		@count += 1
	end

	def reset
		puts "Resetting factory settings..."
		@name = prefix + suffix
		@reboot_time = Time.now
		@count += 1
	end

	def instruction_count
		puts "There have been #{count} operations on Robot #{self.print_name}"
		@count += 1
	end

	def timers
		time_since_create = Time.now - create_time
		time_since_reboot = Time.now - reboot_time
		puts  " it has been #{time_since_create} seconds since creation and #{time_since_reboot} seconds since last reboot."

		@count += 1
	end
	
end




robot1 = Robot.new
puts robot1.print_name
p robot1
robot1.reset
puts robot1.print_name
p robot1
robot1.timers

