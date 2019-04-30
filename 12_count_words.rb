# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words


# Your code here


#Ask user for input
puts "Please enter any phrase or some words"
input = gets.strip

    def word_count(result)
        result.each do |key, value|
            puts "#{key} #{value}"
        end
    end
#end
#count occurence of each word in string
def count_words(input)
    result = Hash.new(0)
    input.split(" ").each do |word|
        result[word.downcase] += 1
        
    end
    word_count(result)
    return result
end

puts count_words(input)


# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2