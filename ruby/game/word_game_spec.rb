require_relative 'word_game'

describe Game do
  let(:game) { Game.new }

  it "shows word length" do
    expect(game.show_word_length("apple").to eq "-----")
  end

  it "limits guesses to 2 times word length" do
    expect(game.limit_guesses("apple").to eq 10)
  end


end
