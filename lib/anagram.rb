require 'pry'
class Anagram
  attr_reader :word
  def initialize(word) #initialize sets attr. for an object when its created
    @word = word
  end
  def match(array) #compare the attr. @word to the elements in the array
    array.find_all do |string|
      # string needed to be changed to an array of letters so .split was used. 
      #Sort was used because order each element in the array
     # To be able to compare arrays
      string.split("").sort == @word.split("").sort
    end
  end
end