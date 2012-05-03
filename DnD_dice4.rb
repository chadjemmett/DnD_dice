#This works as of  May 03, 2012
#d&d dice version 4. Solved some problems with the method. It was returning fail with every die that rolled 1.
#fixed the problem if you put in a space or a letter or enter it would kick out a random float.
#
def dice side
  choices = [0, 4, 6, 8, 10, 12, 20, 100]
  #convert to integer and check to see if it's zero. If you input a letter, it randomizes zero.
  numbers = [0, 8, 9]
side = side.to_i
	if numbers.include?(side) == true
	  puts "Can't help you"
	else
#the great randomator.
  roll = 1 + rand(choices[side])
  
  end
  
  
  	#check to see if it's a 20 and wether we roll a crit or a fail.
    if side == 6 && roll == 20
      puts "CRITICAL HIT!!!"
      text_menu
      elsif roll == 1 && side == 6
        puts "FAIL!!!"
        text_menu
        else
        
        #the final output.
      puts roll
      text_menu
      end
end



#this is the text menu information.
def text_menu

  #this could use some formatting for more clarity.
  puts "Pick a die to roll"
  puts "1 = d4/ 2 = d6/ 3 = d8/ 4 = d10/ 5 = d12/ 6 = d20/ 7 = d100"
  
end      

 
 
 
#the start of the program.
input = ''
text_menu
input = gets.chomp
  while input != "q"
    dice input
    input = gets.chomp
  end
