require('rspec')
require('spec_helper')
require('anagram')

describe (Anagram) do
  describe ('#initialize') do
    it("creates an instance of Anagram that contains two attributes, @word1 and @word2") do
      word = Anagram.new("The Morse Code", "Here come dots")
      expect(word.word1).to(eq(["c", "d", "e", "e", "e", "h", "m", "o", "o", "r", "s", "t"]))
      expect(word.word1).to(eq(["c", "d", "e", "e", "e", "h", "m", "o", "o", "r", "s", "t"]))
    end
  end
  describe ('#compare_length') do
    it("checks if the two arrays are the same length") do
      word = Anagram.new("aBaC", "ABACe")
      expect(word.compare_length()).to(eq(false))
    end
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
  end
  describe ('#is_anagram') do
    it("confirms words are anagrams of one another despite case") do
      word = Anagram.new("TEA", "eat")
      expect(word.is_anagram()).to(eq("ANAGRAM DETECTED!"))
    end
    it("returns NO ACTUAL WORDS DETECTED! for words with no vowels") do
      word = Anagram.new("pkmn", "kmpn")
      expect(word.is_anagram()).to(eq("NO ACTUAL WORDS DETECTED!"))
    end
    it("accounts for two sentences being compared as anagrams") do
      word = Anagram.new("The Morse Code", "Here come dots")
      expect(word.is_anagram()).to(eq("ANAGRAM DETECTED!"))
    end
    it("trims punctuation and whitespace before comparing words") do
      word = Anagram.new("The Morse Code!!!", "Here come dots!!!")
      expect(word.is_anagram()).to(eq("ANAGRAM DETECTED!"))
    end
    it("returns NO ANAGRAM DETECTED! for two words that are not anagrams") do
      word = Anagram.new("aBaC", "ABACe")
      expect(word.is_anagram()).to(eq("NO ANAGRAM DETECTED!"))
    end
    it("returns ANAGRAM CONFIRMED! for two words that are anagrams") do
      word = Anagram.new("RUBY", "ubry")
      expect(word.is_anagram()).to(eq("ANAGRAM DETECTED!"))
    end
    it("returns ANAGRAM CONFIRMED! for two words that are antigrams") do
      word = Anagram.new("test", "gray")
      expect(word.is_anagram()).to(eq("ANTIGRAM DETECTED!"))
    end
  end  
  describe ('#is_antigram?') do
    it("checks if two strings are antigrams") do
      word = Anagram.new("test", "gray")
      expect(word.is_antigram?()).to(eq(true))
    end
  end 
end