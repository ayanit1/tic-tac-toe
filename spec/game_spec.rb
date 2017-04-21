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
      it 'raises draw message' do
        draw_game = Game.new
        draw_game.player_move(1)
        draw_game.player_move(3)
        draw_game.player_move(5)
        draw_game.player_move(8)
        expect{ draw_game.player_move(6) }.to raise_error("Draw")
      end
    end

    context 'game can be won' do
      it 'in a row' do
        win_game = Game.new
        win_game.player_move(1)
        win_game.player_move(2)
        expect { win_game.player_move(3) }.to raise_error("Win")
      end

      it 'in a column' do
        win_game = Game.new
        win_game.player_move(1)
        win_game.player_move(4)
        expect { win_game.player_move(7) }.to raise_error("Win")
      end

      it 'in a diagonal' do
        win_game = Game.new
        win_game.player_move(1)
        win_game.player_move(5)
        expect { win_game.player_move(9) }.to raise_error("Win")
      end
    end
  end
end
