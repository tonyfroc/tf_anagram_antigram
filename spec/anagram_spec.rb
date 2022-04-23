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
      expect(word.check_vowels()).to(eq("NO ACTUAL WORDS DETECTED!"))
        end
    it("checks if vowels are present in the array. If vowels are present, return true") do
      word = Anagram.new("Hello", "Raw")
      expect(word.check_vowels()).to(eq(true))
        end
  describe ('#is_anagram?') do
    it("returns correct string for two words that are not anagrams") do
      word = Anagram.new("aBaC", "ABACe")
      expect(word.is_anagram?()).to(eq("ANAGRAM DENIED!"))
        end
    it("returns correct string for two words that are anagrams") do
      word = Anagram.new("RUBY", "ubry")
      expect(word.is_anagram?()).to(eq("ANAGRAM CONFIRMED!"))
        end
    it("returns correct string for two words that are antigrams") do
      word = Anagram.new("test", "gray")
      expect(word.is_anagram?()).to(eq("ANTIGRAM CONFIRMED!"))
        end    
  describe ('#is_antigram?') do
    it("checks if two strings are antigrams") do
      word = Anagram.new("test", "gray")
      expect(word.is_antigram?()).to(eq(true))
        end
      end 
    end
  end
end
end