require_relative "word_game"

describe Wordgame do |
  let(:word) {Wordgame.new}

  it "gets word length" do
    expect(word.get_length).to eq word.length.to_i
  end

end