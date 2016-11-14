#this is some code
#class code: Class, Game
#The class will have four methods
#Guess, Check, mark, create
#Guess will take a user input
#Check will see if that has been guessed before, and then if its in the word
#mark will add that guess to previously guessed, and if applicable add it to the word
#each round it will check for completion
#Create will be the init
#There it will take a word from the user, and put it as the word to guess
#Then, it will create a user visible list for _

class Hangman

  attr_accessor :user_word, :display_word, :tot_guess, :input_word, :guess_num, :word_length

  def initialize(word)
    @guess_num = 0
    @input_word = word
    @word_length = word.length
    @display_word = @input_word.split("")
    if word.length < 4
      @tot_guess = 3
    elsif word.length < 7
      @tot_guess = 5
    else
      @tot_guess = 7
    end
    @user_word = @input_word.split("")

    @display_word.map! {|letter| letter = "_"}

  end

  def guess(letter)
    spot_num = self.user_word.index(letter)
    if spot_num == nil
      return false
      @guess_num += 1
      p @guess_num
    else
      @display_word[spot_num] = letter
      return true
    end

  end

#  def check
  #  @blank_spaces = 0
  #  @display_word.each do |letter|
  #    if letter == "_"
  #      @blank_spaces += 1
  #    else
  #    end
    #  if @blank_spaces == 0
    #    @game_won = true
#        puts "Congratulations! You won"
  #      break
#      else
#        @game_won = false
#      end
#    end
#  end
  def check
    @blank_spaces = 0
    counter = 0
    p self.word_length
    until counter == @word_length
      if @display_word[counter] == @user_word[counter]
        p "Check of #{self.display_word[counter]} is correct!"
        counter +=1
      else
        @blank_spaces +=1
        counter += 1
      end
    end
      if @blank_spaces == 0
        p "You Win"
        return true
      else
        p "Keep Trying!"
        return false
      end
    
end
end


tester = Hangman.new("word")
puts "The user word is #{tester.user_word}"
puts "The current display word is #{tester.display_word}"
puts "Word is #{tester.input_word}"
puts tester.tot_guess
tester.guess("o")
puts "The user word is #{tester.user_word}"
puts "The current display word is #{tester.display_word}"
puts "Word is #{tester.input_word}"
puts tester.tot_guess
#Driver code

puts "Welcome to the game, please enter what word you would like to play"
input = gets.chomp
game = Hangman.new(input)
while game.guess_num != game.tot_guess
  puts "The current board is #{game.display_word}"
  puts "Please make a guess of a single letter"
  input = gets.chomp
  if game.guess(input) == false
    puts "Good try, but not good enough!"
    p "Your remaining guesses #{game.tot_guess - game.guess_num - 1}"
  else
    puts "Nice guess!"
  end
  if game.check == true
    game.guess_num = game.tot_guess
  else
    game.guess_num += 1
  end
end
