require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:first_move) { 1 }

  context 'when instantiated' do
    it 'can hold moves' do
      expect(game.moves).to be_an(Array)
    end

    it 'no moves have been made' do
      expect(game.moves).to be_empty
    end

    xit 'has winning combinations' do
      expect(game.winning_combo).to be_a(Win_combos)
    end
  end

  context 'player makes a move' do
    it 'adds to .move' do
      expect{ game.player_move(first_move) }.to change{ game.moves.size }.by(1)
    end
  end
end
