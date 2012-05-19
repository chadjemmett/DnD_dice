#start of our dice rolling method
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


dice 'q'
dice "0"
dice "9"
dice "6"