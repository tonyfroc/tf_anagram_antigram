require('rspec')
require('spec_helper')
require('anagram')

describe (Anagram) do
  describe ('#compare_length') do
    it("checks if the two arrays are the same length") do
      word = Anagram.new("aBaC", "ABACe")
      expect(word.compare_length()).to(eq(false))
        end
  describe ('#check_vowels') do
    it("checks if vowels are present in the array. If none are present, return false") do
      word = Anagram.new("plkm", "plkm")
      expect(word.check_vowels()).to(eq(false))
        end
    it("checks if vowels are present in the array. If vowels are present, return true") do
      word = Anagram.new("Hello", "Raw")
      expect(word.check_vowels()).to(eq(true))
        end
  describe ('#is_anagram?') do
    it("returns correct string for two words that are not anagrams") do
      word = Anagram.new("aBaC", "ABACe")
      expect(word.is_anagram?()).to(eq("These words are not anagrams!"))
        end
    it("returns correct string for two words that are anagrams") do
      word = Anagram.new("RUBY", "ubry")
      expect(word.is_anagram?()).to(eq("These words are anagrams!"))
        end
      end 
    end
  end
end