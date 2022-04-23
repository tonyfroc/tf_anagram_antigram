require('pry')

class Anagram
  def mod_string(str)
    str.chars().sort(&:casecmp).join()
  end
end