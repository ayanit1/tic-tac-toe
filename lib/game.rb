class Game
  attr_reader :moves

  def initialize
    @moves =[]

    #Winning combinations
    w1 = Set.new [1,2,3]
    w2 = Set.new [4,5,6]
    w3 = Set.new [7,8,9]
    w4 = Set.new [1,4,7]
    w5 = Set.new [2,5,8]
    w6 = Set.new [3,6,9]
    w7 = Set.new [1,5,9]
    w8 = Set.new [3,5,7]

    @winning_combos = [w1,w2,w3,w4,w5,w6,w7,w8]
  end

  def player_move(num)
    @moves.push(num)
  end
end
