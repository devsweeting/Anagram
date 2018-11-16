## Anagram - Week 1 Independent Project Ruby

#### By Devin Sweeting

## Description

This project tests our basic understanding of Ruby concepts such as creating a class, instance variables, defining methods, and using Behavior Driven Development to write web applications.

## Setup/Installation Requirements

* _Log in to GitHub_
* _Clone GitHub URL in terminal_
  -https://github.com/devsweeting/Anagram.git
* _Open the html file in your Web Browser_
* _Open file in Atom_

## Specifications

describe('Anagram#anagram_check') do
it("Expect 'Clint Eastwood' to be an antigram of 'Old West Action'") do
  word = Anagram.new('Clint Eastwood')
  expect(word.anagram_check('Old West Action')).to(eq(true))

## Learning Objectives
* Check if two words are anagrams. If they are, your method should return something like: "These words are anagrams."

 * Account for the possibility that words may have different cases, but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".

* Check if inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words! (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels; but you are welcome to add other rules as well.)

* If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."

* Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.

### Example Spec:

describe('Anagram#anagram_check') do
it("Expect 'Clint Eastwood' to be an antigram of 'Old West Action'") do
  word = Anagram.new('Clint Eastwood')
  expect(word.anagram_check('Old West Action')).to(eq(true))
end
end

## Technologies Used
_GitHub, Ruby, Atom_

### License
Copyright (c) 2018 Devin Sweeting
GNU General Public License 3.0
