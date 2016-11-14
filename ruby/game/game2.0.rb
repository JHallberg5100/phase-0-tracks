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

  attr_accessor :user_word, :display_word, :tot_guess, :input_word

  def initialize(word)
    @guess_num = 0
    @input_word = word
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
    spot_num = @user_word.index(letter)
    if spot_num == nil
      return false
      @guess_num += 1
    else
      @display_word[spot_num] = letter
      return true
    end

  end

  def check
    @blank_spaces = 0
    @display_word.each do |letter|
      if letter == "_"
        @blank_spaces += 1
      else
      end
      if @blank_spaces == 0
        @game_won = true
      else
        @game_won = false
      end
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
