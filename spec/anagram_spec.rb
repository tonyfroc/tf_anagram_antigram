require('rspec')
require('spec_helper')
require('anagram')

describe (Anagram) do
  describe ('#variables') do
    it("downcases and splits the string, listing the letters alphabetically") do
    test = Anagram.new
    expect(test.variables("aBaC","ABAC")).to(eq(["a","a","b","c"]))
    end
  end
end
