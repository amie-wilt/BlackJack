$LOAD_PATH.unshift File.dirname(__FILE__)
require 'deck'

#  ASK PLAYER TO PLAY

puts "Would you like to play BlackJack?"
begin_play = gets.chomp.downcase 

if begin_play == "yes"
    puts "Let's begin!"
elsif begin_play == "no"
    puts "Maybe next time."
else 
    puts "Please reply with Yes or No."
end    


# SHUFFLE DECK/DEAL CARDS

deck = Deck.new
deck.shuffle!

4.times.deck.draw


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