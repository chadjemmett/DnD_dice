#This works as of  May 03, 2012
#Fixed up the text_menu method.
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
        lw = 50
        puts "~~~~~~~~~~~"
      puts roll
      text_menu
      end
end



#this is the text menu information.
def text_menu
 lw = 50
 14.times do
 puts ''
 end
  a = ["Choose your die", " 'q' to quit", "1 = d4", "2 = d6", "3 = d8", "4 = d10", "5 = d12", "6 = d20", "7 = 100", "*************************************"]
  puts (a[0].center(lw))
  puts (a[1].center(lw))
  puts (a[9].center(lw))
  puts (a[2].ljust(lw/3 ) + a[3].ljust(lw/3) + a[4].rjust(lw/3))
  puts (a[5].ljust(lw/3 ) + a[6].ljust(lw/3) + a[7].rjust(lw/3))
  puts (a[8].center(lw))
  puts (a[9].center(lw))
  

end     

 
 
 
#the start of the program.
input = ''
text_menu
input = gets.chomp
  while input != "q"
    dice input
    input = gets.chomp
  end
