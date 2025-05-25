# frozen_string_literal: true

require_relative 'Board'
require_relative 'Player'

class Game
  def initialize
    Board.new
    Player.new(gets.chomp, 'X')
    Player.new(gets.chomp, 'O')
  end
end
