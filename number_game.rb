# Computer generate a random number
# Player guess number
# Computer tell Player if guess is high or low
# Inform if Player guesses number 
#  Only allow 5 tries per game


puts "Want to try to guess my number that's between 1 and 100.\n"

random_number = rand(1 ..100) 
game_on = true
counter = 0


while game_on
user_num = gets.chomp.to_i	
puts random_number

  if user_num < random_number
    puts "Your pick is to low"
  elsif user_num > random_number
    puts "Your pick is to high"
  else
    puts "Congrats you picked the number!!"
    if user_num == random_number
    	break
    end
  end
end
