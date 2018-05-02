require_relative 'test_helper'
require './lib/answer_check'
require 'pry'

class AnswerCheckTest < Minitest::Test

  def setup
    @answer_check = AnswerCheck.new
  end

  def test_it_exists
    assert_instance_of AnswerCheck, @answer_check
  end

  def test_answer_initializes_with_pattern
    assert_instance_of Array, @answer_check.answer
    assert_equal 4, @answer_check.answer.length
    refute @answer_check.answer.include?("f")
  end

  def test_it_can_check_answer
    @answer_check.answer = ["r", "g", "b", "y"]
    input = "gggg"
    assert_equal [1, 1], @answer_check.check_answer(input)
    input = "rbyg"
    assert_equal [4, 1], @answer_check.check_answer(input)
  end





end
