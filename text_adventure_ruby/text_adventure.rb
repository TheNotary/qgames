intro = "once a upon a  time a doggo was good. you are this good dog. your decieding evryday doggo choices. the first is do you: rest or wake up parents for breakfast."

points =50

puts intro

choice = gets

if choice == "rest\n"
   puts "you take a snooze"
points = points +10
end
if choice == "breakfast\n"
  puts "your parents are sleepy and spill your kibble. if you had rested you wouldnt have to eat floor kibble."
  points = points - 10
end


if choice == "rest\n"

  puts "its  almost lunch your snooze makes you hungry do you: go outside to play. or get your belly full\n"
  choice2 =gets
end

if choice == "breakfast\n"
  puts "its almost lunch your belly is full. so do you: take a walk with the leash or go into the yard\n"

end
if choice == "yard\n"
  puts "you saw a squrrel just had to chase fortunately for you (and unfortunatley for your parents) you cuaght it\n"
  points = points - 10
end
if  choice == "outside\n"
  puts "you spot a squrrel and try to run after it but your leash stops you. you realize that that squrrel wouldve made you stinky."
  points = points + 5

  if choice == "eat\n"
    puts "your belly is now full and you feel energetic\n"
     points = points + 10

     if choice == "play\n"
      puts "your hungry, even hungrier after you play so much but you did have fun\n"
      points = points +10
    end
  end
end



puts "game over"
puts "you had " + points.to_s + "  points"

if choice == "good dog\n"
  puts "yay! you won"
end



