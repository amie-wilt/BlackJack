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
  puts dealer_hand
  puts dealer_hand.inject(0) { |sum, card| sum += card.value }
end

player_hand = []
2.times do
  player_hand << deck.draw
  puts player_hand
  puts player_hand.inject(0) { |sum, card| sum += card.value }
end


# AUTOMAGIC WIN

if dealer_hand == 21
  puts "Dealer got 21, you lost!"
end

if player_hand == 21
  puts "You won!"
end


# CHECK TO SEE IF DEALER TOTAL IS 16, STAY OR HIT ACCORDINGLY

# if dealer_hand == 16


# ASK PLAYER IF THEY WANT TO STAY OR HIT, WRITE IF/ELSE ACCORDINGLY

# STOP LOOP WHEN BOTH PLAYERS DECIDE TO STAY

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