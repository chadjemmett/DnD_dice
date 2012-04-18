#D&D dice class and stuff.



def interface
  puts "Welcome to ye olde dice roller"
  puts "Pick a die to roll and press 'Enter'!!"
  puts "press 'Q' to quit."
  input = ''
     
    while input != "q" || "Q"
         buttons = [1, 2, 3, 4, 5, 6, 7]
    input = gets.chomp
    	if buttons.include?(input)
    	dice input
    	end
    end
  

    
end

def dice side
  authorized = [4, 6, 8, 10, 12, 20, 100]
   #we make sure there's a number we can use
  unless authorized.include?(side)
    puts "We can't help you there."
   end
   #the guts of the program
  roll = 1 + rand(side)
  	#check to see if it's a 20 and wether we roll a crit or a fail.
    if side == 20 && roll == 20
      puts "CRITICAL HIT!!!"
      elsif roll == 1
        puts "FAIL!!!"
        else
        #the final output.
      puts roll
      end
  #the end of the dice method
end


#calling the method. In a little block so we can see if it works.

interface


#text input
def text_menu
#this could use some formatting for more clarity.
  puts "Pick a die to roll"
  puts "1 = d4/ 2 = d6/ 3 = d8/ 4 = d10/ 5 = d12/ 6 = d20/ 7 = d100"
end