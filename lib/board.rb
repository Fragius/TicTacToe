# frozen_string_literal: true

class Board
  def initialize
    @check_guide = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [8, 4, 0]]
    @board = [['#', '#', '#'], ['#', '#', '#'], ['#', '#', '#']]
  end

  def load
    @board.map { |row| row.join(' ') }.join("\n")
  end

  def update(coords, type)
    if @board[coords[0]][coords[1]] == '#'
      @board[coords[0]][coords[1]] = type
      true
    else
      false
    end
  end

  def check
    @check_guide.each do |test|
      board = @board.flatten
      if board[test[0]] == board[test[1]] && board[test[0]] == board[test[2]] && board[test[0]] != '#'
        return board[test[0]]
      end
    end
    nil
  end
end
