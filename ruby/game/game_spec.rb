require_relative "game2.0"

describe Hangman do

  let(:game){Hangman.new("word")}

  it "guesses letter" do

    expect(game.guess("o")).to eq true
  end

  it "check game" do
    expect(game.guess("o")).to eq false
  end
end
