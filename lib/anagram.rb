require('pry')

class Anagram
  def mod_string(str)
    str.downcase().chars().sort(&:casecmp).join().split("")
  end
end