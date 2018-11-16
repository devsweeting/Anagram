class Anagram
  attr_writer(:word)

  def initialize(word)
    @word = word
  end


  def anagram_check(input)
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
end
