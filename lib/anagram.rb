require('pry')

class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def mod_string(word)
    word.downcase().chars().sort(&:casecmp).join().split("")
  end

  def compare_length()
    if @word1.length == @word2.length
      true
    else
      "These words are not anagrams because they are not the same length."
    end
  end

end