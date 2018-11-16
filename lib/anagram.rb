class Anagram
  attr_writer(:word)

  def initialize(word)
    @word = word
  end


  def anagram_check(input)
    count1 = @word.chars.count {|char| "aeiou".include?(char)}
    count2 = input.chars.count {|char| "aeiou".include?(char)}
    ana = @word.downcase().split('').sort()
    gram = input.downcase().split('').sort()
    if ((count1 == 0) || (count2 == 0))
      puts "#{input} is not even a word!"
      return false
    elsif (ana.each.any?{|char| gram.include?(char)}) == false
      puts "This is an antigram!"
      return false
    elsif (ana == gram)
      puts "#{input} is an anagram to #{@word}"
      return true
    else
      puts "This is NOT an anagram!"
      return false
    end
  end
end


# -------------- Notes and extra methods ----------------

# ana = ['a','s','s']
# gram = ['b','a','s','s']
# anti = ['f','l','y']
# grams = ['b','a','d']
# anti.each.any?{|char| grams.include?(char)}
# ana.each.any?{|char| gram.include?(char)}
#
# def count_vowels(string)
#   count = string.chars.count {|char| "aeiou".include?(char)}
#   puts count
#   return count
# end



  # def anagram_check(word1, word2)
  #   count1 = word1.chars.count {|char| "aeiou".include?(char)}
  #   count2 = word2.chars.count {|char| "aeiou".include?(char)}
  #   ana = word1.downcase().split('').sort()
  #   gram = word2.downcase().split('').sort()
  #   if ((count1 == 0) || (count2 == 0))
  #     puts "Not even a word!"
  #     return false
  #   elsif (ana.each.any?{|char| gram.include?(char)}) == false
  #     puts "This is an antigram!"
  #     return false
  #   elsif (ana == gram)
  #     puts "This is an anagram!"
  #     return true
  #   else
  #     puts "This is NOT an anagram!"
  #     return false
  #   end
  # end

  # def count_vowels(@word)
  #   count = string.chars.count {|char| "aeiou".include?(char)}
  #   puts count
  #   return count
  # end
