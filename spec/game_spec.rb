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

    xit 'has winning combinations' do
      expect(game.winning_combo).to be_a(Win_combos)
    end
  end

  describe '#player_move' do
    context 'player makes a move' do
      it 'adds to .move' do
        expect{ game.player_move(1) }.to change{ game.moves.size }.by(1)
      end
    end

    context 'game can be drawn' do
      it 'raises draw message if more than 5 moves exceeded' do
        draw_game = Game.new
        draw_game.player_move(1)
        draw_game.player_move(3)
        draw_game.player_move(5)
        draw_game.player_move(8)
        expect{ draw_game.player_move(6) }.to raise_error("Draw")
      end
    end
  end
end
