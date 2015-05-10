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


# SHUFFLE DECK/DEAL CARDS/SUM TOTALS

deck = Deck.new
deck.shuffle

dealer_hand = []
2.times do 
  dealer_hand << deck.draw
end

puts "The cards were dealt. One of the dealer's cards is a #{dealer_hand[0]}." 

dealer_hand.inject(0) { |sum, card| sum += card.value }


player_hand = []
2.times do
  player_hand << deck.draw
end

# AUTOMAGIC WIN

if dealer_hand == 21
  puts "Dealer got 21, you lost!"
end

if player_hand == 21
  puts "You won!"
end

puts "Your cards are: "
puts player_hand 
puts "Your total sum is #{player_hand.inject(0) { |sum, card| sum += card.value } }. Would you like to stay or hit? Please type Stay or Hit."

next_move = gets.chomp.downcase

if next_move == "hit"
  player_hand << deck.draw
else
  player_total == player_hand
end






# CHECK TO SEE IF DEALER TOTAL IS 16, STAY OR HIT ACCORDINGLY

# if dealer_hand < 16 && dealer_hand 
#   dealer_hand << deck.draw
# end


# ASK PLAYER IF THEY WANT TO STAY OR HIT, WRITE IF/ELSE ACCORDINGLY

# STOP LOOP WHEN BOTH PLAYERS DECIDE TO STAY

# WHO WINS?


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