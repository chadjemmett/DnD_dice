#final version May 19, 2012. It has a hash. That tightens up the code a bit.
#This works as of  May 03, 2012
#May 17. This needs a hash added instead of my convoluted array menu system. Gotta figure that out.
#Fixed up the text_menu method.
#d&d dice version 4. Solved some problems with the method. It was returning fail with every die that rolled 1.
#fixed the problem if you put in a space or a letter or enter it would kick out a random float.
#
#this was the old method. I had some convluted menu system involving multiple arrays and such. now
#def dice side
  #choices = [0, 4, 6, 8, 10, 12, 20, 100]
  #convert to integer and check to see if it's zero. If you input a letter, it randomizes zero.
  #numbers = [0, 8, 9]
	#if choices != choices.include? == true
	 # puts "Can't help you"
	#else
#the great randomator.
  #roll = 1 + rand(choices[side])
  #puts side
  #end
  
  
  	#check to see if it's a 20 and wether we roll a crit or a fail.
   # if side == 6 && roll == 20
    #  puts "CRITICAL HIT!!!"
     # text_menu
      #elsif roll == 1 && side == 6
       # puts "FAIL!!!"
        #text_menu
        #else
        
        #the final output.
        #line_width = 50
        #puts "~~~~~~~~~~~"
      #puts roll
      #text_menu
      #end
#end

#start of our dice rolling method. this is the new one with the hash.
def dice side

    choices = { "1" => 4, "2" => 6, "3" => 8, "4" => 10, "5" => 12, "6" => 20, "7" => 100}
    #making sure we don't get anything except what's in the hash
    
    
    unless choices.include?(side)
        puts "Can't help you."
    else
    #the random number genarator.
    random_number = 1 + rand(choices[side])
    #check to see if we have a 1 or 20
    
      if random_number == 20 && side == "6"
        puts "CRITICAL HIT!"
      elsif random_number == 1 && side == "6"
        puts "FAIL!"
     else
     
        #outputs the final number.
        puts random_number
        puts "~~~~~~~~~~~~~~"
        #text_menu
     end
    end

end #end of dice rolling method.

#this is the text menu information.
def text_menu
 14.times do
 puts ''
 end
 line_width = 50
  a = ["Choose your die", " 'q' to quit", "1 = d4", "2 = d6", "3 = d8", "4 = d10", "5 = d12", "6 = d20", "7 = 100", "*************************************"]
  puts (a[0].center(line_width))
  puts (a[1].center(line_width))
  puts (a[9].center(line_width))
  puts (a[2].ljust(line_width/3 ) + a[3].ljust(line_width/3) + a[4].rjust(line_width/3))
  puts (a[5].ljust(line_width/3 ) + a[6].ljust(line_width/3) + a[7].rjust(line_width/3))
  puts (a[8].center(line_width))
  puts (a[9].center(line_width))
  

end     

 
 
 
#the start of the program.
input = ''
text_menu
input = gets.chomp
  while input != "q"
    dice input
    input = gets.chomp
  end
