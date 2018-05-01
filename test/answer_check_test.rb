require_relative 'test_helper'
require './lib/answer_check'

class AnswerCheckTest < Minitest::Test

  def test_it_exists
    @answer_check = AnswerCheck.new
    assert_instance_of AnswerCheck, @answer_check
  end



end
