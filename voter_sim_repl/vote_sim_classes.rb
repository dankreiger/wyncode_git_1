# include Vote ###### WRITE VOTING MODULE W/ VOTE METHOD
require './vote_mod.rb'
include VoteSim

class Person
	attr_accessor :id, :name, :politics, :party
	@@pol_id = 0
	@@vot_id = 0
	
	@@politicians = []

	@@voters = []

	@@rep_tally = []
	@@dem_tally = []

	@@stump_speech = []

	@@dem_nominee = []
	@@rep_nominee = []

	@@all_republicans = []
	@@all_democrats = []
	
	def vote

	end

end


class Voter < Person
	# attr_accessor :party

	def initialize(name, politics)
		@id = @@vot_id
		@name = name
		@politics = politics
		@@vot_id += 1
		@@voters << self
	end

	def self.all 
		@@voters
	end

	def self.attend_speech

	end

	def probability(num)
		rand(1..100) < num
	end

	def vote_rep?
		if politics == "Tea Party"
			probability(90)
			puts "I'm voting for the elephants."
			@@rep_tally << self
		elsif politics == "Conservative"
			probability(75)
			puts "I'm voting for the elephants."
			@@rep_tally << self
		elsif politics == "Neutral"
			probability(50)
			puts "I'm voting for the elephants. It doesn't matter either way."
			@@rep_tally << self 
		elsif politics == "Liberal"
			probability(25)
			puts "I'm voting for the elephants. I changed my mind."
			@@rep_tally << self
		elsif politics == "Socialist"
			probability(10)
			puts "I'm voting for the elephants. I changed my mind."
			@@rep_tally << self
		else
			"Incalculable"
		end
	end	


	def vote_dem?
		if politics == "Tea Party"
			probability(10)
			puts "I'm voting for the donkeys. I'm surprised, but they convinced me."
			@@dem_tally << self
		elsif politics == "Conservative"
			probability(25)
			puts "I'm voting for the donkeys. I'm surprised, but they convinced me."
			@@dem_tally << self
		elsif politics == "Neutral"
			probability(50) 
			@@dem_tally << self
			puts "I'm voting for the donkeys. It doesn't matter either way."
		elsif politics == "Liberal"
			probability(75)
			@@dem_tally << self
			puts "I'm voting for the donkeys."
		elsif politics == "Socialist"
			probability(90)
			puts "I'm voting for the donkeys."
			@@dem_tally << self
		else
			"Incalculable"
		end
	end	

	
end

class Politician < Voter

	def initialize(name, party)
		# @id = @@pol_id
		@name = name
		@party = party
		# @@pol_id += 1
		@@politicians << self
	end
 
	def self.all
		 @@politicians
	end 

end

#############

vote_sim