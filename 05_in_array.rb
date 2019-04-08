# Methods

# Write a method called 'in_array' which will take 
# two parameteres:
# One as a string and one as an array of strings
in_array = "hello" ["hi", "hola", "hello"]
# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.

def in_array (needle, haystack)
  # Your code here
  haystack.include?(needle)
end

#second approach
haystack.each { |h| return true if h == needle }
return false

#or
haystack.each do |h| 
  return true if h == needle
end 
return false

#or 

i = 0
while i < haystack.length do
  if haystack[i] == needle
    return true 
  end
  i += 1 
end 
return false
end
