require_relative "game"
let(:game){Game.new}
describe Game do
  it "initializes game" do
  expect(game.start("word")).to eq "word"
  end
  it "guesses letter" do
  expect(game.guess("o")).to eq true
  end
  it "Properly updates"
  expect(game.mark(true)).to eq true
  end
end
