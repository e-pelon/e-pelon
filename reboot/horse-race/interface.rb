puts "horse Race Program"
puts "Welcome to the Horse Race of Le Wagon"

horses = ["Colt", "Bolt", "Jolt", "Miguel"]
puts "The horses of today are: \n\n" # \n\n just like hiting enter
horses.each_with_index do |horse, index|
  p "#{index} - #{horse}"
end

puts "On which horse do you want to bet on (type the number)"
user_horse = gets.chomp.to_i

puts "How much do you want to bet?"
bet_placed = gets.chomp.to_f

another_bet = y
until another_bet = n
  winner = horses.sample # also rand(1..a.size) size of array unknown
  if user_horse == horses.index(winner) # Taking the index of an array
    puts "The horse won the race! Congratulations"
  else
    puts "Oh, sorry. You lost the #{bet_placed} :(, Mass Putt"
  end
end


# 1) print welcome
# 2) create a list of horses
# 3) show a list of horses
# 4) ask the user: "on which horse do you want to bet on"
# 5) Ask the user: "How much do you want to bet?"
# 6) place the bet
# 7) run the race method
# 8) Display the result of the race: winner looser
# 9)Display the result of the bet
# 10) Want to bet again?

# puts "Welcome to Alamitos"
# puts "Today is your lucky day!"
# # Choose the horse
# puts "Choose your winning horse from horse_1 to horse_10"
# your_horse = gets.chomp

# puts "What id your bet"
# your_bet = gets.chomp.to_i

# horse_array = [
#                 "horse_1",
#                 "horse_2",
#                 "horse_3",
#                 "horse_4",
#                 "horse_5",
#                 "horse_6",
#                 "horse_7",
#                 "horse_8",
#                 "horse_9",
#                 "horse_10"
# ]
# house_horse = horse_array.sample
#   if house_horse == your_horse
#     puts "You win"
#   elsif
#     puts "You loose"
#   else
#     puts "Mass Puttt"
# end

# house_horse = horse_array.sample
#   if house_horse == your_horse
#     puts "You win #{your_bet}"
#   else
#     puts "You loose #{your_bet}"
# end



# # Pseudo-code:
# # 1. Print welcome
# # 2. Get horses - create a list of horses
# # 3. Get user's bet - loop
# # 4. Run the race
# # 5. Print results
# puts "Welcome to Alamitos"
# puts "Today is your lucky day!"
# # Choose the horse
# puts "Choose your winning horse from 1 to 10"
# your_horse = gets.chomp.to_i

# puts "What id your bet"
# your_bet = gets.chomp.to_i

# house_horse = rand(10)
#   if house_horse == your_horse
#     puts "You win"
#   else
#     puts "You loose"
# end

# house_horse = rand(10)
#   if house_horse == your_horse
#     puts "You win #{your_bet}"
#   else
#     puts "You loose #{your_bet}"
# end


