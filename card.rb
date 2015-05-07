class Card

    def initialize(suit, value)
        @card = card
    end

    # def name
    #     puts value + " of " suit
    # end




    suits = [:hearts, :diamonds, :spades, :clubs]
    suits.each do |suit|
        (2..10).each do |value|
            @cards << Card.new(suit, value)
        end
      @cards << Card.new(suit, "J")
      @cards << Card.new(suit, "Q")
      @cards << Card.new(suit, "K")
      @cards << Card.new(suit, "A")
end


end