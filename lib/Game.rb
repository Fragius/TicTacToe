# frozen_string_literal: true

require_relative 'Board'
require_relative 'Player'

class Game
  def initialize
    @board = Board.new
    @players = [Player.new(gets.chomp, 'X'), Player.new(gets.chomp, 'O')]
    puts @board.load
  end

  def round
    @players[0].play(@board)
    puts @board.load
    @players[1].play(@board)
    puts @board.load
  end
end
