module VoteSim
	
	def vote_sim
		i = 0
		until i == 1
		puts ""
		puts "---------------------------------------------------------"
		puts ""
		puts "What would you like to do?"
		puts ""
		puts "Create, List, Update, or Vote"
		puts ""
		puts "\texit type: end"
		puts ""
		puts ""

		answer = gets.chomp

		case answer.downcase
			when "create"
				create()
			when "list"
				list()
			when "update"
				update()
			when "vote"
				vote()
				i += 1
			when "end"
				puts ""
				puts"Thank you. Goodbye."
				puts ""
				i+=1
			
			else
				puts ""
				puts "\tInvalid Entry:"
				puts ""
				puts "Please Enter - Create, List, Update, or Vote."
				puts ""
				puts ""
				end
			end
		end

		def create
			j=0
			until j==1
			puts ""
			puts "What would you like to create? Politician or Person"
			puts "---------------------------------------------------------"
			answer = gets.chomp
			
				case answer.downcase
					when "politician"
						puts "Enter name:"
						puts ""
						name = gets.chomp.capitalize
						puts ""
						puts "---------------------------------------------------------"
						puts "NAME: #{name}"
						puts "---------------------------------------------------------"
						puts ""
						puts "Enter party affiliation (Republican or Democrat):"
						puts ""
						party = gets.chomp.capitalize
						puts ""
						puts "---------------------------------------------------------"
						puts "PARTY: #{party}"
						puts "---------------------------------------------------------"
						puts ""
						puts "Thank you for your entry."
						puts ""
						bark = Politician.new(name, party)
						j+=1
					
					when "person"

						puts "Enter full name:"
						puts ""
						name = gets.chomp.capitalize
						puts ""
						puts "---------------------------------------------------------"
						puts "NAME: #{name}"
						puts "---------------------------------------------------------"
						puts ""
						puts "Politics? Liberal, Conservative, Tea Party, Socialist or Neutral"
						puts ""
						politics = gets.chomp.capitalize
						puts ""
						puts "---------------------------------------------------------"
						puts "POLITICS: #{politics}"
						puts "---------------------------------------------------------"
						puts ""
						puts "Thank you for your entry."
						puts ""
						wau = Voter.new(name, politics)					
					
						j+=1
					else 
						puts "Invalid Entry: Please Enter Politician or Person."
						
				end
			end
		end

		def list
			puts ""
			puts "---------------------------------------------------------"
			puts ""

		 		puts "POLITICANS:"
		 		puts "----------"
					b = Politician.all
				puts b.map { |n| "NAME: #{n.name}" + "\n" + "PARTY: #{n.party}"}
				puts ""
				puts ""
				puts ""
				puts "VOTERS:"
				puts "-------"
				c = Voter.all
				puts c.map { |n| "NAME: #{n.name}" + "\n" + "POLITICS: #{n.politics}"}
					
			
		end

		def update
			puts "Old name?"
			old_name = gets.chomp.capitalize
			puts "What would you like to update? Enter Name, Party, or Politics"
			pupdate = gets.chomp.capitalize
				
				if pupdate == "Name"
					puts "New name?"
					new_name = gets.chomp.capitalize

						Voter.all.each do |n|
							if old_name == n.name
								n.name = new_name
							end
						end

						Politician.all.each do |x|
							if old_name == x.name
								x.name = new_name
							end
						end
					

					elsif pupdate == "Politics"
						puts "What are your new politics? Liberal, Conservative, Tea Party, Socialist or Neutral"
						new_politics = gets.chomp.capitalize
						Voter.all.each do |n|
							if old_name == n.name
								n.politics = new_politics
							end
						end

					elsif pupdate == "Party"
						puts "What is your new party?"
						new_party = gets.chomp.capitalize
						Politician.all.each do |x|
							if old_name == x.name
								x.party = new_party
							end
						end 	 
					else
					
					puts "You didn't enter Name, Political Party, or Politics."
			end
		end

	def vote
		def probability(num)
			rand(1..100) < num
		end

		def vote_rep?
		if Voter.politics == "Tea Party"
			probability(90)
		elsif Voter.politics == "Conservative"
			probability(75)
		elsif Voter.politics == "Neutral"
			probability(50) 
		elsif Voter.politics == "Liberal"
			probability(25)
		elsif Voter.politics == "Socialist"
			probability(10)
		else
			"Incalculable"
		end
	end	


	def vote_dem?
		if Voter.politics == "Tea Party"
			probability(10)
		elsif Voter.politics == "Conservative"
			probability(25)
		elsif Voter.politics == "Neutral"
			probability(50) 
		elsif Voter.politics == "Liberal"
			probability(75)
		elsif Voter.politics == "Socialist"
			probability(90)
		else
			"Incalculable"
		end
	end	
end

    


end