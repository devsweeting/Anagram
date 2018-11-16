require('Anagram')
require ('pry')
require ('rspec')

describe('Anagram#anagram_check') do
# anagram method
  it("Expect 'hello' to match 'hello'") do
    word = Anagram.new('hello')
    expect(word.anagram_check('hello')).to(eq(true))
  end

  it("Expect 'hi' to not match 'bye'") do
    word = Anagram.new('hi')
    expect(word.anagram_check('bye')).to(eq(false))
  end

  it("Expect 'HEllo' to match 'heLLO'") do
    word = Anagram.new('HEllo')
    expect(word.anagram_check('heLLO')).to(eq(true))
  end

  it("Expect 'trn' to not match 'wtm'") do
    word = Anagram.new('trn')
    expect(word.anagram_check('wtm')).to(eq(false))
  end

  it("Expect 'hi' to be an antigram of 'bye'") do
    word = Anagram.new('hi')
    expect(word.anagram_check('bye')).to(eq(false))
  end

  it("Expect 'Clint Eastwood' to be an antigram of 'Old West Action'") do
    word = Anagram.new('Clint Eastwood')
    expect(word.anagram_check('Old West Action')).to(eq(true))
  end

end





# is a vowel method
# it("Expect 'hello' to return 2 vowels") do
#   expect(count_vowels('hello')).to(eq(2))
# end
