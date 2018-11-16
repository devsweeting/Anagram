require('anagram')
require ('pry')
require ('rspec')

describe('anagram') do

  it("Expect 'hello' to match 'hello'") do
    expect(anagram_check('hello', 'hello')).to(eq(true))
  end

  it("Expect 'HEllo' to match 'heLLO'") do
    expect(anagram_check('HEllo', 'heLLO')).to(eq(true))
  end
end
