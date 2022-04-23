require('rspec')
require('spec_helper')
require('anagram')

describe (Anagram) do
  describe ('#mod_string') do
  it("downcases and rearranges a string, listing the string in alphabetical order") do
    test = Anagram.new
    expect(test.mod_string("abac")).to(eq("aabc"))
  end
end
end
