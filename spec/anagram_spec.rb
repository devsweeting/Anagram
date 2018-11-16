require ('rspec')
require('anagram')
require ('pry')

describe('#check_anagram') do
  it("#expect 'a' to match 'a'") do
    expect(check_anagram('a')).to(eq('true'))
  end

end
