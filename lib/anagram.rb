require('pry')

class Anagram
  attr_reader :word1, :word2

  def initialize(word1, word2)
    @word1 = modify_string(word1)
    @word2 = modify_string(word2)
  end

  def modify_string(string)
    string.gsub(/\s+/, "").gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').downcase().chars().sort(&:casecmp).join().split("")
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

  def is_anagram()
    if check_vowels() == false
      "NO ACTUAL WORDS DETECTED!"
    elsif compare_length == true && check_vowels == true && @word1 == @word2
    "ANAGRAM DETECTED!"
    elsif is_antigram?() == true
    "ANTIGRAM DETECTED!"
    else
    "NO ANAGRAM DETECTED!"
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