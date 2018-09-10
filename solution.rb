class Deck
  @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
  @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  attr_reader :cards

  def initialize
    @cards = []
    @@suit.each do |suit|
      @@rank.each do |rank|
        @cards.push(Card.new(suit,rank))
      end
    end
  end

  def choose_card
    @cards.delete(@cards.sample)
  end

end

class Card
  attr_accessor :rank, :suit
  def initialize(suit,rank)
    @rank = rank
    @suit=suit
  end
end
