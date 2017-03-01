### Challenge 2 - Reverse a string

# Reverse a string in place. In other words, do not create a new string or use other methods on the string such as `reverse`. The goal of the problem is to use a loop and the string accessors to figure out which values to swap for other values. Below is some sample output.
#
# Enter a string:
# reverse_me
# em_esrever

def reverseit
  p "Enter a string"
  string = gets.chomp
  string_length = string.length
  # h e l l o
  if string_length.odd?
    stop_index = (string_length / 2).floor
  else
    stop_index = (string_length/2)
  end
  i = 0
  while i < stop_index
    store = string[i]
    string[i] = string[-i-1]
    string[-i-1]=store
    i+=1
  end
  p string
end

reverseit

# class String
#   def toJadenCase
#     array = self.split(' ')
#     array.each do |word|
#       word.capitalize!
#     end
#     array.join(' ')
#     #self.split.map(&:capitalize).join(" ")   ##Notice .split no need (' '). By default is space
#     #self.split.map(&:length).join(" ")  ##Returns [5,5] for string "Hello world".toJadenCase
#   end
# end
