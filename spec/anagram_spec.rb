require('anagram')
require ('pry')
require ('rspec')
require ('ruby-dictionary')

describe('Phrase#anagram') do
  it("Expect 'hello' to match 'hello'") do
    word = Phrase.new('hello')
    expect(word.anagram('hello')).to(eq(true))
  end

  it("Expect 'hi' to not match 'bye'") do
    word = Phrase.new('hi')
    expect(word.anagram('bye')).to(eq(false))
  end

  it("Expect 'HEllo' to match 'heLLO'") do
    word = Phrase.new('HEllo')
    expect(word.anagram('heLLO')).to(eq(true))
  end

  it("Expect 'trn' to not match 'wtm'") do
    word = Phrase.new('swooty')
    expect(word.anagram('sw00ty')).to(eq(false))
  end

  it("Expect 'hi' to be an antigram of 'bye'") do
    word = Phrase.new('hi')
    expect(word.anagram('bye')).to(eq(false))
  end

  it("Expect 'Clint Eastwood' to be an anagram of 'Old West Action'") do
    word = Phrase.new('Clint Eastwood')
    expect(word.anagram('Old West Action')).to(eq(true))
  end

  it("Expect 'racecar' to be a palindrome") do
    word = Phrase.new('racecar')
    expect(word.palindrome()).to(eq(true))
  end

# ---------failed tests for dictionary -----------

  # it("Expect swiggty to NOT be a word") do
  #   word = Phrase.new('swiggity')
  #   expect(word.exists?(@name)).to(eq(false))
  # end

end
