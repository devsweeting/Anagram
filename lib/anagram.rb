# class Word
#   attr_writer(:word,)
#
#   def initialize(word1, word2)
#     @word1 = word1
#     @word2 = word2
#   end

  def anagram_check(word1, word2)
    ana = word1.downcase().split('').sort()
    gram = word2.downcase().split('').sort()
    if (ana == gram)
      puts "This is an anagram!"
      return true
    else
      puts "this is NOT an anagram!"
      return false
    end
  end

# end
