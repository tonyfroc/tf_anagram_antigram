require('rspec')
require('spec_helper')
require('anagram')

describe (Anagram) do
  describe ('#mod_string') do
    it("downcases and splits the string, listing the letters alphabetically") do
    word = Anagram.new("aBaC", "ABAC")
    expect(word.mod_string("aBaC")).to(eq(["a","a","b","c"]))
    end
  end
  describe ('#check_length') do
    it("downcases and splits the string, listing the letters alphabetically") do
    word = Anagram.new("aBaC", "ABACd")
    expect(word.compare_length()).to(eq("These words are not anagrams because they are not the same length."))
    end
end
end