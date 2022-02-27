intro = "once a upon a  time a doggo was good. you are this good dog. your decieding evryday doggo choices. the first is do you: rest or wake up parents for breakfast."



puts intro

choice = gets

if choice == "rest\n"
   puts "you take a snooze"
end

if choice == "breakfast\n"
  puts "your parents are sleepy and spill your kibble. if you had rested you wouldnt have to eat floor kibble."
end

if choice == "breakfast\n"
   points = 40
end



puts "game over"
puts "you had " + points.to_s + "  points"

if choice == "good dog\n"
  puts "yay! you won"
end
