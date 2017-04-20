require 'game'

describe Game do
  subject(:game) { described_class.new }

  context 'when instantiated' do
    it 'can hold moves' do
      expect(game.player_moves).to be_an(Array)
    end
  end
end
