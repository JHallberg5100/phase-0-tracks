require_relative "game"

describe Full_Game do

  let(:game){Full_Game.new("word")}

  it "guesses letter" do

    expect(game.guess("o")).to eq true
  end

  it "Properly updates" do

    expect(game.mark(true)).to eq true
  end
end
