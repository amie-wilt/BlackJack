class Deck

    SUIT = [:hearts, :diamonds, :spades, :clubs]
    VALUE = [2, 3, 4, 5, 6, 7, 8, 9, 10]

    def initialize(suit, value)
        @suit = suit
        @value = value
    end



#     suits = [:hearts, :diamonds, :spades, :clubs]
# suits.each do |suit|
#   (2..10).each do |value|
#     @cards << Card.new(suit, value)
#   end
#   @cards << Card.new(suit, "J")
#   @cards << Card.new(suit, "Q")
#   @cards << Card.new(suit, "K")
#   @cards << Card.new(suit, "A")
end
end
