#d&d dice version 3. Solved some problems with the method. It was returning fail with every die that rolled 1.
#fixed the problem if you put in a space or a letter or enter it would kick out a random float.
#this is so close to working.
def dice side
  choices = [0, 4, 6, 8, 10, 12, 20, 100]
  #convert to integer and check to see if it's zero. If you input a letter, it randomizes zero.
side = side.to_i
	if side == 0
	  puts "Can't help you"
	else
#the great randomator.
  roll = 1 + rand(choices[side])
  
  end
  
  
  	#check to see if it's a 20 and wether we roll a crit or a fail.
    if side == 6 && roll == 20
      puts "CRITICAL HIT!!!"
      elsif roll == 1 && side == 6
        puts "FAIL!!!"
        else
        
        #the final output.
      puts roll
      #take this out before shipping.
      puts "*********************"
      end
end



#this is the text menu information.
def text_menu

  #this could use some formatting for more clarity.
  puts "Pick a die to roll"
  puts "1 = d4/ 2 = d6/ 3 = d8/ 4 = d10/ 5 = d12/ 6 = d20/ 7 = d100"
  
end      

 
 
 
 
input = ''


text_menu
input = gets.chomp
	while input != "Q" || input != "q"
	  text_menu
	  dice input
	  input = gets.chomp
	end

