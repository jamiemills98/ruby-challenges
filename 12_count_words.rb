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



loop do
    puts "Please enter any word, character or number. Press s to stop."
    answer = gets.strip
    if answer == "s"
        break
    end
end

def count(string)
    result = []
    result.default = 0
    words = string.scan
    words.each do |a|
        result[a] += 1
end
    return result
end



# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2