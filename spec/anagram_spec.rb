require('rspec')
require('spec_helper')
require('anagram')

describe (Anagram) do
  describe ('#mod_string') do
  it("downcases and rearranges a string, listing the string in alphabetical order") do
    test = Anagram.new
    expect(test.mod_string("aBaC")).to(eq("aabc"))
  end
  it("downcases and splits the string, listing the letters alphabetically") do
    test = Anagram.new
    expect(test.mod_string("aBaC")).to(eq(["a","a","b","c"]))
  end
end
end
