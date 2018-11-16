require ('ruby-dictionary')
puts "loaded!"

class Phrase
  attr_writer(:word)

  def initialize(word)
    @word = word
  end


  def anagram(input)
    count1 = @word.chars.count {|char| "aeiou".include?(char)}
    count2 = input.chars.count {|char| "aeiou".include?(char)}

    ana = @word.gsub(/\s+/, "").downcase().split('').sort()
    gram = input.gsub(/\s+/, "").downcase().split('').sort()

    if ((count1 == 0) || (count2 == 0))
      puts "#{input} is not a word! Try again"
      return false

    elsif (ana.each.any?{|char| gram.include?(char)}) == false
      puts "#{input} has no matching characters, it is an antigram to #{@word}."
      return false

    elsif (ana == gram)
      puts "#{input} is an anagram to #{@word}."
      return true

    else
      puts "#{input} is NOT an anagram to #{@word}!"
      return false
    end
  end

  def palindrome()
    reversed_word = @word.downcase().split('').reverse().join()
    if reversed_word == @word
      puts "#{@word} spelled backwards is #{reversed_word}. It's a palindrome!"
      return true
    else
      puts "#{@word} spellled backwards is #{reversed_word}. It's NOT a palindrome!"
      return false
    end
  end
end
