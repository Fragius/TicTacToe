# frozen_string_literal: true

require_relative 'lib/game'

def play
  puts 'start new game? Y/N'
  answer = gets.chomp
  if answer == 'Y'
    game = Game.new
    loop do
      result = game.round
      if result
        puts result
        break
      end
    end
  end
end

loop {play}
