class AnswerCheck
  attr_accessor      :answer

  def initialize
    @answer = generate
    @guess_number = 0
  end

  def generate
    possible = ["r", "g", "b", "y"]
    possible.map do
      possible.sample
    end
  end

  def check_answer(input)
    @guess_number += 1
    correct_elements = 0
    correct_indicies = 0
    @answer.each_with_index do |letter, index|
      if input.include?(letter)
        correct_elements += 1
      end
      if letter == input[index]
        correct_indicies += 1
      end
    end
    [correct_elements, correct_indicies]
  end
end
