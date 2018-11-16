require('anagram')
require ('pry')
require ('rspec')

describe('anagram') do
# anagram method
  it("Expect 'hello' to match 'hello'") do
    expect(anagram_check('hello', 'hello')).to(eq(true))
  end

  it("Expect 'hi' to not match 'bye'") do
    expect(anagram_check('hi', 'bye')).to(eq(false))
  end

  it("Expect 'HEllo' to match 'heLLO'") do
    expect(anagram_check('HEllo', 'heLLO')).to(eq(true))
  end

  it("Expect 'trn' to not match 'wtm'") do
    expect(anagram_check('trn', 'wtm')).to(eq(false))
  end

# is a vowel method
  it("Expect 'hello' to return 2 vowels") do
    expect(count_vowels('hello')).to(eq(2))
  end
end
