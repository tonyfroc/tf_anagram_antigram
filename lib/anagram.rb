require('pry')

class Anagram
  def initialize(word1, word2)
    @word1 = word1.gsub(/\s+/, "").downcase().chars().sort(&:casecmp).join().split("")
    @word2 = word2.gsub(/\s+/, "").downcase().chars().sort(&:casecmp).join().split("")
  end

  def compare_length()
    if @word1.length == @word2.length
      true
    else
      false
    end
  end

  def check_vowels()
    vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    word_one_counter = 0
    word_two_counter = 0
    @word1.each do |letter|
      if vowels.include?(letter)
        word_one_counter += 1
      end
    end
    @word2.each do |letter|
      if vowels.include?(letter)
        word_two_counter += 1
      end
    end
    if word_one_counter >= 1 && word_two_counter >= 1
      true
    else
      false
      
  end
end

  def is_anagram?()
    if compare_length == true && check_vowels == true && @word1 == @word2
      "ANAGRAM CONFIRMED!"
    elsif 
      is_antigram?() == true
      "ANTIGRAM CONFIRMED!"
    elsif
      check_vowels() == false
      "NO ACTUAL WORDS DETECTED!"
    else
      "ANAGRAM DENIED!"
  end
end

def is_antigram?()
  character_match_count = 0
  @word1.each do |letter|
    if @word2.include?(letter)
      character_match_count += 1
    end
  end
  if character_match_count == 0
    true
  else
    false
  end
end

end