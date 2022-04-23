require('pry')

class Anagram
  def variables(word1, word2)
    @word1 = word1.downcase().chars().sort(&:casecmp).join().split("")
    @word2 = word2.downcase().chars().sort(&:casecmp).join().split("")
  end
end