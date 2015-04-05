# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing 
#over five-thousand first names, begin by sorting it into alphabetical order. 
#Then working out the alphabetical value for each name, multiply this value by its 
#alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, 
#is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?
# https://projecteuler.net/problem=22

# require 'pry'



#     ALPHAHASH = {
#     "A" => 1, "B" => 2, "C" => 3, "D" => 4, "E" => 5, 
#     "F" => 6, "G" => 7, "H" => 8, "I" => 9, "J" => 10, 
#     "K" => 11, "L" => 12, "M" => 13, "N" => 14, 
#     "O" => 15, "P" => 16, "Q" => 17, "R" => 18, 
#     "S" => 19, "T" => 20, "U" => 21, "V" => 22, 
#     "W" => 23, "X" => 24, "Y" => 25, "Z" => 26
#   }


  
#   def file_to_array(file)
#     @name_array = []
#     File.new(file).readlines.each do |line|
#       @name_array = line.gsub(/"/,'').chomp.split(",")
#     end
#     @name_array.sort!
#   end


#   def names_sum(file)
#     file_to_array(file)
#     name_product_array = []
#     @name_array.each_with_index do |name, i|
#       name_sum = 0
#       name.split("").each do |letter|
#         name_sum += ALPHAHASH[letter]
#         # binding.pry
#       end
#       # binding.pry
#       name_product_array << name_sum * (i+1)
#       # binding.pry
#     end
#     # binding.pry
#     total_sum = name_product_array.inject {|result, element| result + element }
#     # binding.pry
    
#   end
require 'pry'

class SumSomeNames

  attr_accessor :file

  # generate the alphabetical values hash

  ALPHAHASH = {}
      value = 1
      ('A'..'Z').each do |alphabet|
        ALPHAHASH[alphabet] = value
        value += 1
      end
  
  def initialize(file)
    @file = file
  end


  def alpha_score_for_name(name, alphahash)
    @score = 0
    name.split("").each do |alphabet|
      @score += ALPHAHASH[alphabet]
    end
    return @score
  end


  def file_to_array
   self.name_array = []
       File.new(file).readlines.each do |line|
         self.name_array = line.gsub(/"/,'').chomp.split(",")
       end
       self.name_array.sort!
  end



  def sum_of_scores
    sum = 0
    position = 1
    file_to_array
    @name_array.each do |name|
      sum += position * alpha_score_for_name(name, ALPHAHASH)
      position += 1
    end

    sum
  end
end




