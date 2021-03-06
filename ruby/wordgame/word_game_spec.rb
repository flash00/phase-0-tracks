require_relative "word_game"

describe Wordgame do
  let(:word) {Wordgame.new("soda")}

  it "gets word length" do
    word.get_length("soda")
    expect(word.get_length("soda")).to eq 4
  end

  it "shows word length" do
    word.show_word_length
    expect(word.show_word_length).to eq "----"
  end

  it "calculates guess limit" do
    word.guess_limit("soda")
    expect(word.guess_limit("soda")).to eq 8
  end

  it "compares limit to count and prints message when equal" do
    word.met_limit
    expect(word.met_limit).to eq nil
  end

  it "compares guess with previous guesses" do
    word.met_limit
    expect(word.met_limit).to eq nil
  end

  it "compare guess to wordstring" do
    word.compare_guess("s", "soda")
    expect(word.compare_guess("s", "soda")).to eq "s---"
  end

  it "word guessed" do
    word.win_game
    expect(word.win_game).to eq nil
  end
end