require_relative 'word_game'

describe Game do
  let(:game) { Game.new("apple") }

  it "shows word length" do
    expect(game.show_word_length).to eq "-----"
  end

  it "limits guesses to 2 times word length" do
    expect(game.limit_guesses).to eq 10
  end

  it "informs player if repeated guess" do
    expect(game.repeat_guess("a")).to eq nil
  end

  it "compares guess with word" do
    expect(game.compare_guess("a")).to eq "a----"
  end

  it "prints winning or game over message" do
    expect(game.win_game("a----")).to eq "Game Over. You cannot defeat Word_Mojo!"
  end
end
