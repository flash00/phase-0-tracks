require_relative 'word_game'

describe Game do
  let(:game) { Game.new }

  it "intakes word" do
    expect(game.intake_word("apple", "a").to eq "a----")
  end

end
