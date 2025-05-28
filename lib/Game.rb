# frozen_string_literal: true

require_relative 'Board'
require_relative 'Player'

class Game
  def initialize
    @board = Board.new
    @players = [Player.new(gets.chomp, 'X'), Player.new(gets.chomp, 'O')]
    puts @board.load
  end

  def search_winner
    winner = @players[['X', 'O', nil].index(@board.check)]&.name
    winner if winner
  end

  def round
    @players.each do |player|
      player.play(@board)
      puts @board.load
      winner = search_winner
      return winner if winner
    end
    nil
  end
end
