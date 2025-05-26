# frozen_string_literal: true

class Board
  def initialize
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
end
