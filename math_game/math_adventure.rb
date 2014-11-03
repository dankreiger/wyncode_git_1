# Ruby Data Types
def math
	def problem_2
		# problem 2 - calculates Bignum or Fixnum
		puts ""
		puts "--------------------------------------------------"
		puts ""
		puts "Is it a bignum or a fixnum?"
	 
		# 4611686018427387904
		# the smallest Bignum (19 digits) 
		puts ""
		puts "Note - The Smallest Bignum is: 4611686018427387904"
		puts "(19 digits)"
		puts ""
		puts "Type a number:"
			number = gets.chomp.to_i
			puts ""
			puts number.class
		puts ""
		puts "--------------------------------------------------"
		puts ""
	end
	 
	 
	def problem_4
	  # problem 4 - compare 2 alphabetical characters 
	 
	  puts ""
	  puts "--------------------------------------------------"
	  puts ""
	 
	  puts "Compare two letters (which is greater?)"
	  puts ""
	 
		puts "First Letter (a-z) or (A-Z):"
			a = gets.chomp
	 
		puts ""
	 
		puts "Second Letter (a-z) or (A-Z):"
			b = gets.chomp
	 
		if a > b
			puts ""
			puts ""
			puts "ANSWER: #{a} is greater."
			puts ""
			puts ""
		elsif b > a 
			puts ""
			puts ""
			puts "ANSWER: #{b} is greater."
			puts ""
			puts ""
		else puts "Something went wrong - try again."
		
		end
	 
		puts "--------------------------------------------------"
		puts ""
		
	end
	 
	 
	 
	def problem_5
	  # problem 5 - next method on a String
	 
		puts ""
		puts "--------------------------------------------------"
		puts ""
		puts "The Ruby next method increments the rightmost character in a String.\n\tIt also adds a character when it reaches a boundary."
		
		puts ""
		puts "Enter a String to demo the next method in action."
	 
		string = gets.chomp
		puts ""
	  puts ""
		puts "\t" + "#{string}.next (result below)"
		puts "--------------------------------------------------" 
		puts ""
		puts "\t" + string.next
		puts ""
		puts ""
	end
	 
	 
	 
	 
	def problem_8
	  # problem 8 - collapsing whitespace
	  
		puts ""
		puts "Let's collapse some space."
		puts ""
		puts "--------------------------------------------------"
		puts ""
		puts "Note: here one can use:\n"
		puts ""
		puts ".gsub(/\s+/, " ")"
		puts ""
		puts "e.g."
		puts ""
		puts "'example    string    with    too    much   white    space '.gsub(/\s+/, " ")"
		puts ""
		puts ""
		puts "--------------------------------------------------"
		puts ""
		puts "Enter a string with too much space between the words:"
		puts ""
	  puts ""
		string = gets.chomp
		puts ""
		puts "--------------------------------------------------" 
		puts ""
		puts "result:" 
		puts ""
		
		puts ""
		puts string.gsub(/\s+/, " ")
		puts ""
	end
	 
	 
	 
	def problem_17
	  # problem 17 - split-join (convert 3 integers in array into string)
	  
		puts ""
		puts "--------------------------------------------------"
		puts ""
	 
		puts "# The Ruby join method converts each element of an array into a string, and separates them by the given separator (http://www.ruby-doc.org/core-2.1.3/Array.html#method-i-join)"
		puts ""
		puts "--------------------------------------------------"
		puts ""
	  puts "# The Ruby split method devides a string into substrings based on a delimiter (http://ruby-doc.org/core-2.0/String.html#method-i-split)"
	 
	  puts ""
		puts "--------------------------------------------------"
		puts ""
	 
	  puts "# You can use [].join.split(//) to convert an array of integers into an array of strings."
	 
		puts ""
	  puts "# Let's try with 3 integers."
	  puts ""
	  puts "Enter three integers one at a time:"
	  puts ""
	  
	  pups = []
	 
	  puts "1st integer:"
	  	a = gets.chomp.to_i
	  	pups << a
	 	puts "2nd integer:"
	  	b = gets.chomp.to_i
	  	pups << b
	  puts "3rd integer:"
	  	c = gets.chomp.to_i
	  	pups << c
	 
	  puts ""
	  puts ""
	 
	  # use p instead of puts to show literal output
	  puts "Converted array:"
	  p pups.join.split(//)
		puts ""
		puts "# Developer's note: make sure to use 'p' instead of 'puts' or 'print' to show this literal output."
		puts ""
	end
	 
	 
	def problem_23
		# problem 23 DIMENSIONAL SHIFT
		
		puts ""
		puts "# you can use the Ruby flatten method to convert a multi-dimensional array into a one-dimensional array."
		puts ""
		puts "--------------------------------------------------"
		puts ""
		puts "# e.g.:"
		puts "" 
		puts "# [[1,2,3], [:a, :b, :c]].flatten"
		puts ""
		puts "# should produce:"
		puts ""
		puts "# \t => [1, 2, 3, :a, :b, :c]"
	 
		puts ""
	 
		puts "# Let's try with two arrays - each with three elements."
		puts ""
	 
		puts "--------------------------------------------------"
	 
		puts ""
		puts ""
	 
			puts "Enter three integers one at a time:"
	 
		  	puts ""
		  
		  	pups = []
		  	wau = []
		  	puts "First array:"
		  	puts ""
		  	puts "1st element:"
		  		a = gets.chomp
		  		pups << a
		 		puts "2nd element:"
		  		b = gets.chomp
		  		pups << b
		  	puts "3rd element:"
		  		c = gets.chomp
		  		pups << c
	 
		  	puts ""
		  	puts ""
	 
	 
		  	puts "Second array:"
		  	puts ""
		  	puts "1st element:"
		  		x = gets.chomp
		  		wau << x
		 		puts "2nd element:"
		  		y = gets.chomp
		  		wau << y
		  	puts "3rd element:"
		  		z = gets.chomp
		  		wau << z
	 
		  	puts ""
		  	puts ""
	 
		  	puts "--------------------------------------------------"
		  	puts "# #{[pups,wau]}" + ".flatten"
				puts "--------------------------------------------------"
		  	puts ""
	 
		  	puts "Multi-Dimensional Array:"
		  	p [pups, wau]
	 
		  	puts ""
		  	puts ""
	 
		  	puts "One-Dimensional Array (after flatten method)"
		  	p [pups, wau].flatten
		  	puts ""
	 
	end
	 
	 
	puts ""
	 
	puts "Which Wyncode problem do you need help with? (Ruby Data Types Unit)" 
	puts "Enter: (2, 4, 5, 8, 17, 23)"
	 
	puts ""
	 
	  problem = gets.chomp.to_i
	 
	    if problem == 2
	      problem_2
	    elsif problem == 4
	      problem_4
	    elsif problem == 5
	      problem_5
	    elsif problem == 8
	      problem_8
	    elsif problem == 17
	      problem_17
	    elsif problem == 23
	      problem_23
	    elsif problem >= 100000000
	      puts ""
	      puts "Whoaaaa. That's too big."
	      puts ""
	    else
	      puts ""
	      puts "Sorry, that's not a valid entry."
	      puts ""
	end
 
end

def motiv_quotes

	quotes = []

	n = rand(0..60)

	quotes[0]='There are some people who live in a dream world, and there are some who face reality; and then there are those who turn one into the other. -By Douglas Everett'

	quotes[1]='Whether you think you can or whether you think you can\'t, you\'re right! -Henry Ford'

	quotes[2]='I know of no more encouraging fact than the unquestionable ability of man to elevate his life by conscious endeavor. -Henry David Thoreau'

	quotes[3]='Do not let what you cannot do interfere with what you can do.-John Wooden'

	quotes[4]='Accept everything about yourself - I mean everything, You are you and that is the beginning and the end - no apologies, no regrets. -Clark Moustakas'

	quotes[5]='Słowo rodzi się z dźwięku – dźwięk przed słowem.-Fryderyk Chopin'

	quotes[6]='High achievement always takes place in the framework of high expectation. -Jack Kinder'

	quotes[7]='The measure of a man is the way he bears up under misfortune. -Plutarch'

	quotes[8]='Don\'t wait for your ship to come in, swim out to it. -Anon'

	quotes[9]='As I grow older, I pay less attention to what men say. I just watch what they do. -Andrew Carnegie'

	quotes[10]='Wenn ich mich im Zusammenhang des Universums betrachte, was bin ich? -Ludwig van Beethoven'

	quotes[11]='The words printed here are concepts. You must go through the experiences. -Carl Frederick'

	quotes[12]='Man cannot discover new oceans unless he has the courage to lose sight of the shore. -Andre Gide'

	quotes[13]='El sabio hace inmediatamente lo que el tonto deja para despues. -Baltasar Gracian'

	quotes[14]='The world has the habit of making room for the man whose actions show that he knows where he is going. -Napoleon Hill'

	quotes[15]='Success seems to be connected with action. Successful men keep moving. They make mistakes, but they don\'t quit.-Conrad Hilton'

	quotes[16]='Do the things you know, and you shall learn the truth you need to know.-George Macdonald'

	quotes[17]='I have never heard anything about the resolutions of the apostles, but a good deal about their acts.-Horace Mann'

	quotes[18]='Let us not be content to wait and see what will happen, but give us the determination to make the right things happen.-Peter Marshall'

	quotes[19]='I hear and I forget, I see and I remember. I do and I understand.-Chinese Proverb'

	quotes[20]='One may walk over the highest mountain one step at a time.-John Wanamaker'

	quotes[21]='Every action is either strong or weak, and when every action is strong we are successful.-Wallace D. Wattles'

	quotes[22]='If we do what is necessary, all the odds are in our favor.-Henry Kissinger'

	quotes[23]='Little minds are tamed and subdued by misfortune; but great minds rise above them.-Washington Irving'

	quotes[24]='When an affliction happens to you, you either let it defeat you, or you defeat it...-Rosalind Russell'

	quotes[25]='There\'s a basic human weakness inherent in all people which tempts them to want what they can\'t have and not want what is readily available to them.-Robert J. Ringer'

	quotes[26]='If there is something to gain and nothing to lose by asking, by all means ask!-W. Clement Stone'

	quotes[27]='It\'s not the situation ... It\'s your reaction to the situation-Robert Conklin'

	quotes[28]='Life at any time can become difficult: life at any time can become easy. It all depends upon how one adjusts oneself to life.-Morarji Desai'

	quotes[29]='What happens is not as important as how you react to what happens. -Thaddeus Golas'

	quotes[30]='To hell with circumstances; I create opportunities. -Bruce Lee'

	quotes[31]='Wir können nicht an den Menschen verzweifeln - denn wir selbst sind Menschen.-Albert Einstein'

	quotes[32]='Liebe, und einzig die Liebe ist in der Lage, dir ein glückliches Leben zu geben.-Ludwig van Beethoven'

	quotes[33]='A puñadas entran las buenas hadas.-Proverbio Español'

	quotes[34]='Bach sollte nicht Bach, sondern Meer heissen. -Ludwig van Beethoven'

	quotes[35]='Es gibt Momente, wo ich finde, daß die Sprache noch gar nichts ist. -Ludwig van Beethoven'

	quotes[36]='書不盡言 言不盡意.-Confucius'

	quotes[37]='Kindness is the language which the deaf can hear and the blind can see. -Mark Twain'

	quotes[38]='Wer fremde Sprachen nicht kennt, weiß nichts von seiner eigenen. -Johann Wolfgang von Goethe'

	quotes[39]='Die Sprache verkleidet den Gedanken. -Ludwig Wittgenstein'

	quotes[40]='Illegitimi non carborundum.'

	quotes[41]='Юмор есть остроумие глубокого чувства. -Фёдор Михайлович Достоевский'

	quotes[42]='Нет ничего в мире труднее прямодушия, и нет ничего легче лести. -Фёдор Михайлович Достоевский'

	quotes[43]='Знания — орудие, а не цель.Лев Николаевич Толстой'

	quotes[44]='Wer fertig ist, dem ist nichts recht zu machen; Ein Werdender wird immer dankbar sein.-Johann Wolfgang von Goethe'

	quotes[45]='Die Politik bedeutet ein starkes langsames Bohren von harten Brettern mit Leidenschaft und Augenmaß zugleich.-Max Weber'

	quotes[46]="There's no such thing as dead languages, only dormant minds.-Carlos Ruiz Zafón"

	quotes[47]='Die Grenzen meiner Sprache bedeuten die Grenzen meiner Welt.-Ludwig Wittgenstein'

	quotes[48]='He knows nothing; and he thinks he knows everything. That points clearly to a political career.-George Bernard Shaw'

	quotes[49]='Folks are usually about as happy as they make their minds up to be.-Abraham Lincoln'

	quotes[50]='Nicht der Mangel der Liebe, sondern der Mangel der Freundschaft macht die unglücklichen Ehen.-Friedrich Nietzsche'

	quotes[51]='Das Überraschende macht Glück. -Friedrich von Schiller'

	quotes[52]='Nur Beharrung führt zum Ziel, nur die Fülle führt zur Klarheit und im Abgrund wohnt die Wahrheit.-Friedrich von Schiller'

	quotes[53]='All philosophies are mental fabrications.-Nāgārjuna (Nagarjuna)'

	quotes[54]='I am not, I will not be. I have not, I will not have. This frightens all children, And kills fear in the wise.-Nāgārjuna (Nagarjuna)'

	quotes[55]='Happiness in intelligent people is the rarest thing I know.-Ernest Hemingway'

	quotes[56]='Remembrance of the past may give rise to dangerous insights, and the established society seems to be apprehensive of the subversive contents of memory.-Herbert Marcuse'

	quotes[57]='Calmness, gentleness, silence, self-restraint, and purity: these are the disciplines of the mind.-Bhagavad Gita'

	quotes[58]='Music is a moral law. It gives soul to the universe, wings to the mind, flight to the imagination, and charm and gaiety to life and to everything.-Plato'

	quotes[59]='Wise men speak because they have something to say; Fools because they have to say something.-Plato'

	quotes[60]='The only true wisdom is in knowing you know nothing.-Socrates'

	quotes[61]='An obstacle is often a stepping stone.-William Prescott'

	quotes[62]='If opportunity doesn’t knock, build a door.-Milton Berle'

	quotes[63]='The pessimist sees difficulty in every opportunity. The optimist sees the opportunity in every difficulty.-Winston Churchill'

	quotes[64]='Happiness is a warm puppy.-Charles M. Schultz'

	quotes[n]

end
 
 
def puppy
 
  a = [1,2]
  upto = 4_000_000
   while a[-2] + a[-1] < upto
    a << a[-2] + a[-1] 
end
 
# Sum of puponacci numbers
sum = 0
a.each { |x| sum+= x if x.even? }
 
puts "The result is #{sum} <= string interpolation of sum variable" 
puts "end"
puts ""
puts ""
 
puts "what the..."
 
puts ""
 
puts "ok goodbye. thanks."
 
puts ""
 
end
 
puts ""
puts "Do you want to do see some ruby math?"
	puts ""
	puts "(yes/no/maybe)"
		puts ""
		answer = gets.chomp.downcase
		
 
		case answer
			when "yes"
				puts ""
		    puts "Euler's number is #{Math::E}"
		    puts ""
		    puts "good lookin out."
		    puts ""
			when "no"
				puts ""
		    puts "What about these things?"
		    puts "Enter 1 for some motivation."
		    puts "Enter 2 to see some puppy euler."
		    puts "Enter 3 to peace out."
		    puts ""

		    antwort = gets.chomp.to_i

		    if antwort == 1
			    	puts ""
						puts motiv_quotes
						puts ""

		  	elsif antwort == 2
		    
			    puts ""
			    puts ""
					puts "a = [1,2]"
	  			puts "upto = 4_000_000"
					puts "\twhile a[-2] + a[-1] < upto"    
					puts "\ta << a[-2] + a[-1]"
					puts ""
					puts "Sum of puponacci numbers"
					puts "sum = 0"
					puts "a.each { |x| sum+= x if x.even? }" 
					puts ""
					
					puppy

				elsif antwort == 3
					puts ""
					puts "Thanks and goodbye."
					puts ""
				else
					puts "Not a valid entry"
				end
 
		when "maybe"
			puts ""
			puts "Well then what do you want to do homes?"
			puts "(Choose: 1, 2, or 3)"
			puts ""
			puts "1: That's too abstract. I'm outta here."
			puts "2: Some Wyncode problems."
			puts "3: Count 0 to 100."
 
			puts ""
 
			answer_2 = gets.chomp.to_i
			puts ""
			puts ""
			if answer_2 == 1
				puts "aiiiight peace."
				puts ""
			elsif answer_2 == 2
				math
			elsif answer_2 == 3
				i = 0
					while i <=100
						puts i
						i += 1
					end
				puts ""
			else
				puts "Not a valid entry."
				puts ""
			end
		else
				puts ""
		    puts "Not a valid entry."
		    puts ""
		   
		end