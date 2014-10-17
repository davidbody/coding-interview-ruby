require 'rspec'

def remove_extra_consecutive s, max_consecutive_chars
  s.chars.chunk(&:to_s).map{|a| a[1].take(max_consecutive_chars)}.flatten.join
end

describe "remove_extra_consecutive" do
  it "aaab, 2 => aab" do
    expect(remove_extra_consecutive("aaab", 2)).to be == "aab"
  end

  it "aabb, 1 => ab" do
    expect(remove_extra_consecutive("aabb", 1)).to be == "ab"
  end

  it "aabbaa, 1 => aba" do
    expect(remove_extra_consecutive("aabbaa", 1)).to be == "aba"
  end
end
