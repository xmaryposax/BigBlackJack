require './lib/card.rb'
Suits = ["Trebol","Corazon","Picas","Diamante"]
Ranks = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    Suits.each do |suit|
      Ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end
  def shuffle!
    @cards.shuffle!
  end
  def draw
    @cards.pop
  end
  def remaining
    @cards.length
  end
end
