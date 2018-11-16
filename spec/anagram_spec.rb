require('Anagram')
require ('pry')
require ('rspec')

describe('Anagram#anagram_check') do
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
    word = Anagram.new('swooty')
    expect(word.anagram_check('sw00ty')).to(eq(false))
  end

  it("Expect 'hi' to be an antigram of 'bye'") do
    word = Anagram.new('hi')
    expect(word.anagram_check('bye')).to(eq(false))
  end

  it("Expect 'Clint Eastwood' to be an anagram of 'Old West Action'") do
    word = Anagram.new('Clint Eastwood')
    expect(word.anagram_check('Old West Action')).to(eq(true))
  end
end
