require_relative "game2.0"

describe Hangman do

  let(:game){Hangman.new("word")}

  it "guesses letter" do

    expect(game.guess("o")).to eq true
  end


end
