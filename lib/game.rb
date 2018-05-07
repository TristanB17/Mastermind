require_relative 'sequence_generator'
require_relative 'answer_check'
require_relative 'printer'
require 'time'


class Game
  include SequenceGenerator
  include AnswerCheck
  include Printer

  attr_reader   :guess_number,
                :timer,
                :input,
                :number1,
                :number2,
                :answer,
                :mins,
                :secs

  def initialize
    @answer = generate
    @guess_number = 0
    @timer = nil
    @mins = nil
    @secs = nil
    @input = nil
    @elements = nil
    @indicies = nil
  end

  def calculate_win_time
    new_time = (Time.new - @timer).to_i
    @mins = new_time / 60
    @secs = new_time % 60
  end

  def start
    welcome_txt
    while @input != 'q'
      @timer = Time.new
      @input = gets.chomp.downcase
      case
      when @input == 'p'
        then @answer = generate
        play_txt
      when @input == 'i'
        then instructions_txt
      when @input == 'c'
        cheat_txt
      when @input == 'q'
        then quit_txt
        break
      when @input.length == 4
        @guess_number += 1
        @input = @input.chars
        correct = check_answer(@answer, @input)
        if correct[0] == 4 && correct[1] == 4
          calculate_win_time
          win_txt
        else
          @elements = correct[0].to_s
          @indicies = correct[1].to_s
          wrong_txt
        end
      when @input.length != 4
        then invalid_input_txt
      end
    end
  end

end
