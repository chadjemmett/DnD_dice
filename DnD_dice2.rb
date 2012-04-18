#DnD dice roller version 2

def dice side
  authorized = [0, 4, 6, 8, 10, 12, 20, 100]
   #we make sure there's a number we can use
  unless authorized.include?(side)
    puts "We can't help you there."
   end
   #the guts of the program
  roll = 1 + rand(authorized[side])
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
def text_menu
#this could use some formatting for more clarity.
  puts "Pick a die to roll"
  puts "1 = d4/ 2 = d6/ 3 = d8/ 4 = d10/ 5 = d12/ 6 = d20/ 7 = d100"
end

input = ''

 
puts "Welcome to Dark Dice."
text_menu
input = gets.chomp

unless input == "q" || "Q"
  dice input
 text_menu
    	end