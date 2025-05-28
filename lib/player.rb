# frozen_string_literal: true

class Player
  attr_reader :name

  def initialize(name, type)
    @name = name
    @type = type
  end

  def play(board)
    loop do
      coords = gets.chomp.reverse.split('-').map { |coord| coord.to_i - 1 }
      played = board.update(coords, @type)
      break if played
    end
  end
end
