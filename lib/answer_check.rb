module AnswerCheck
  
  def check_answer(input)
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
