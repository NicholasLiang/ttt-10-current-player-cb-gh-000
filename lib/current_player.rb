def turn_count(board)
  count = 0
  board.each do |grid|
    if grid == "O" || grid == "X"
      count += 1
  end
  count
end
  
def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  end
  "O"
end
    it 'counts occupied positions' do
      board = ["O", " ", " ", " ", "X", " ", " ", " ", "X"]

      expect(turn_count(board)).to eq(3)
    end
  end

  describe '#current_player' do
    it 'returns the correct player, X, for the first move' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

      expect(current_player(board)).to eq("X")
    end