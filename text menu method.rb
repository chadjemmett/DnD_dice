#dnd dice text menu method. Started May 03, 2012.

def text_menu
 lw = 50
  a = ["Choose your die", " 'q' to quit", "1 = d4", "2 = d6", "3 = d8", "4 = d10", "5 = d12", "6 = d20", "7 = 100", "*************************************"]
  puts (a[0].center(lw))
  puts (a[1].center(lw))
  puts (a[9].center(lw))
  puts (a[2].ljust(lw/3 ) + a[3].ljust(lw/3) + a[4].rjust(lw/3))
  puts (a[5].ljust(lw/3 ) + a[6].ljust(lw/3) + a[7].rjust(lw/3))
  puts (a[8].center(lw))
  puts (a[9].center(lw))
  

end
