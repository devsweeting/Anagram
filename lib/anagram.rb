class Word
  # attr_reader(:name, :breed)
  attr_writer(:word, :word2)
  # attr_accessor(:age)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def check_anagram (word)
    if (@word1 == @word2)
      puts "This is an anagram!"
    else
      puts "this is NOT an anagram!"
    endrspec
  end
end
