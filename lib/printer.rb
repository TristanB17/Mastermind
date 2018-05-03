module Printer

  def welcome_txt
    puts "\e[H\e[2J"
    puts "Hello there! Welcome to Mastermind!\n"
    puts "Press (p) to play, (i) for instructions or (q) to quit."
    puts "You can also cheat by pressing (c), but come one, you're better than that."
  end

  def instructions_txt
    puts "\e[H\e[2J"
    puts "I will generate a sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow."
    puts "Your task is that you must guess(type) the correct combination of colors"
    puts "(a color may also appear more than once - it's even possible that a sequence contains the same color up to four times!)."
  end

  def play_txt
    puts "\e[H\e[2J"
    puts "I have generated a sequence with four elements made up of:"
    puts "(r)ed, (g)reen, (b)lue, and (y)ellow."
    puts "Use (q)uit at any time to end the game.What's your guess?"
  end

  def quit_txt
    puts "\e[H\e[2J"
    puts "Thanks for playing!"
  end

  def invalid_input_txt
    puts "\e[H\e[2J"
    puts "Invalid guess. Answers must be four letters long."
  end 

end
