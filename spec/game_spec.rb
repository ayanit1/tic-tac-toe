require 'game'

describe Game do
  subject(:game) { described_class.new }

  context 'when instantiated' do
    it 'can hold moves' do
      expect(game.moves).to be_an(Array)
    end

    it 'no moves have been made' do
      expect(game.moves).to be_empty
    end
  end
end
