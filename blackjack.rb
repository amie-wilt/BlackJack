$LOAD_PATH.unshift File.dirname(__FILE__)

require 'card'
require 'deck'

#  ASK PLAYER TO PLAY

puts "Would you like to play BlackJack?"
begin_play = gets.chomp.downcase # why infinite loop without downcase method?

if begin_play == "yes"
    puts "Let's begin!"
elsif begin_play == "no"
    puts "Fuck off. Maybe next time."
else 
    puts "Please reply with Yes or No."
end    



#  DEAL CARDS

def deal
  VALUE.shuffle
  puts "Your cards are " VALUE[0] + "and " + VALUE[1] + ". The dealer's first card is " + VALUE[2] + ". Would you like to Stay or Hit?"

  next_move_response = gets.chomp.downcase
  
  if next_move_response == "hit"
    puts "Your next card is a " + VALUE[4]
  else 
    break
  end



end



# WHO WINS?

dealer_total = 20 #card1 + card2
player_total = 20 #card1 + card2 


if player_total > 21
    puts "You Lost :("
elsif dealer_total > player_total && dealer_total <= 21
    puts "You Lost :("
elsif dealer_total == player_total
    puts "You Lost :("
else
    puts "You Won!"
end

deck.shuffle