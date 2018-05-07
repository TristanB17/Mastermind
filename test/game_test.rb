require_relative 'test_helper'
require './lib/game'
require './lib/printer'
require './lib/sequence_generator'
require './lib/answer_check'
require 'time'

class GameTest < Minitest::Test

  def setup
    @game = Game.new
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_game_initial_attributes
    assert_equal 0, @game.guess_number
    assert_nil @game.timer
    assert_nil @game.input
  end

  def test_game_initializes_with_pattern
    assert_instance_of Array, @game.answer
    assert_equal 4, @game.answer.length
    refute @game.answer.include?("f")
  end

end
