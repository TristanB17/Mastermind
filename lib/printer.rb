module Printer

  def welcome_txt
    puts "\e[H\e[2J"
    puts "Hello there! Welcome to Mastermind!"
    puts "Press (p) to play, (i) for instructions or (q) to quit."
    puts "You can also cheat by pressing (c), but come on, you're better than that."
  end

  def instructions_txt
    puts "\e[H\e[2J"
    puts "I will generate a sequence with four" \
    "elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow."
    puts "Your task is that you must guess(type) the correct combination of colors"
    puts "(a color may also appear more than once -
    it's even possible that a sequence contains the same color up to four times!)."
  end

  def play_txt
    puts "\e[H\e[2J"
    puts "I have generated a sequence with four elements made up of:"
    puts "(r)ed, (g)reen, (b)lue, and (y)ellow."
    puts "Use (q)uit at any time to end the game. What's your guess?"
  end

  def quit_txt
    puts "\e[H\e[2J"
    puts "Thanks for playing!"
  end

  def invalid_input_txt
    puts "\e[H\e[2J"
    puts "Invalid guess. Answers must be four letters long."
  end

  def cheat_txt
    puts "\e[H\e[2J"
    puts "Grand-scale cheating: the answer is #{@answer.join}"
  end

  def wrong_txt
    puts "Nope, but you have #{@number1}
    correct colors, #{@number2} correct indicies."
    puts "and you've taken #{@guess_number} guess#{"es" if @guess_number > 1}."
  end

  def win_txt
    puts "\e[H\e[2J"
    puts "Congratulations! You've won absolutely nothing!\nBut you did guess the correct sequence of #{@answer.join} in #{@mins} minute#{'s' if @mins != 1} and #{@secs} seconds."
    puts "Good job or something. Do you want to (p)lay again or (q)uit?"
  end

end
