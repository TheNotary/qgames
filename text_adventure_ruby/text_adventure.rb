####################
# Story Definition #
####################

story_locations = [
  {
    location_name: "bedroom",
    story_content: "Once a upon a time a doggo was good. you are this good doggo. you are decieding every day doggo choices. The first is do you: rest or wake up parents for breakfast.",
    story_content_unread: true,
    verbs: {
      look: "You see a bedroom with a regular boring bed.  A closet door leads NORTH.  To the EAST is the door leading into the rest of the house.",
      rest: true,
      eat: true,
      go: true
    },
    adjacent_locations: {
      north: 1,
      east: 2,
    },
  },
  {
    location_name: "closet",
    story_content_unread: false,
    verbs: {
      look: "You are in a closet... for some reason.",
      go: true
    },
    adjacent_locations: {
      south: 0,
    },
  },

]


##############
# Game State #
##############

points = 50
current_location = story_locations.first


#############
# Game Loop #
#############

loop do
  # print_story_content
  if current_location[:story_content_unread]
    puts current_location[:story_content]
    current_location[:story_content_unread] = false
  end

  choice = gets.chomp.downcase

  #################
  # GAME CONTROLS #
  #################

  if choice == "?"
    puts
    puts "The below verbs are allowed in this location:"

    puts "  " + current_location[:verbs].keys.join(" ")
  end

  if choice == "q" || choice == "quit"
    exit
  end

  ########################
  # BASIC LOCATION VERBS #
  ########################

  if choice == "look"
    puts
    puts current_location[:verbs][:look]
  end

  ##########################
  # COMPLEX LOCATION VERBS #
  ##########################

  if choice.start_with?('go')
    direction = choice.split(' ').last

    possible_directions = current_location[:adjacent_locations].keys.map { |sym| sym.to_s }
    if possible_directions.include?(direction)
      dest_index = current_location[:adjacent_locations][direction.to_sym]
      current_location = story_locations[dest_index]
      puts "done."
    else
      puts "You can't go that way.  #{direction}"
      puts "Keys: #{possible_directions}"
    end
  end

end

# puts story_dictionary[:intro]

# 10.times do
#   choice = gets
#   choice = choice.chomp

#   if choice == "rest"
#     puts "you take a snooze"
#     points = points + 10
#     puts "its  almost lunch your snooze makes you hungry do you: go outside to play. or get your belly full\n"
#     choice2 = gets
#   end

#   if choice == "breakfast"
#     puts "your parents are sleepy and spill your kibble. if you had rested you wouldnt have to eat floor kibble."
#     points = points - 10
#     puts "its almost lunch your belly is full. so do you: take a walk with the leash or go into the yard\n"
#   end

#   if choice == "yard"
#     puts "you saw a squrrel just had to chase fortunately for you (and unfortunatley for your parents) you cuaght it\n"
#     points = points - 10
#   end

#   if choice == "outside"
#     puts "you spot a squrrel and try to run after it but your leash stops you. you realize that that squrrel wouldve made you stinky."
#     points = points + 5

#     if choice == "eat"
#       puts "your belly is now full and you feel energetic\n"
#       points = points + 10

#       if choice == "play"
#         puts "your hungry, even hungrier after you play so much but you did have fun\n"
#         points = points +10
#       end
#     end
#   end
# end


#   puts "game over"
#   puts "you had " + points.to_s + "  points"

#   if choice == "good dog\n"
#     puts "yay! you won"
#   end

