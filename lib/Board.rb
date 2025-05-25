# frozen_string_literal: true

class Board
  def initialize
    @board = Array.new(3, Array.new(3, '#'))
  end

  def load
    @board.map { |row| row.join(' ') }.join("\n")
  end
end
