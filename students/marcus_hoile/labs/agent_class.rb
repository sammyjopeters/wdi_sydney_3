class Agent
	# agent can add listings to the website, ie an array
	attr_accessor :username, :password
	def initialize(username, password)
		@username = username
		@password = password
	end

  
end