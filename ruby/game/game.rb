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
Class Game
  def initialize
    @num_guess = 0
    puts "Please enter a word to guess"
    @word = gets.chomp
    @word = @word.to_string
    if @word.length < 4
      @tot_guess = 3
    elsif @word.length < 8
      @tot_guess = 5
    else
      @tot_guess = 7
    @user_word = []
    @user_word = @word.split
    @display_word = @user_word
    @display_word.map! {|letter| letter = "_"}

    end
  end

  def guess(word)

    @guess = word
    @user_word.map! do |letter|
      if letter == @guess
        place_holder = letter.index
        @display_word[place_holder] = @guess
        @display_word
        guess_truth = true
      else
        guess_truth = false
      end
      if guess_truth == true
        puts @display_word
        puts "Good Guess!"
        guess_truth
      else
        @num_guess += 1
        guess_truth
      end
    end

    def check
      @display_word.map! do |letter|
        if letter == "_"
          success = false
        else
        end
        if success == false
          puts "Still more to go!"
          return false
        else
          puts "Congratz!"
          break
      end
end
