# Definition
# 
# Extend the definition class to have three different methods:
# 1. add_word(word, definition), should store a word and definition
# 2. lookup(word), should return a definition
# 3. total_words, should return the total number of words
# 
# Example:
# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# definition.total_words -> should return 1
# definition.lookup('ruby') -> should return 'A red, precious stone'
#
# Check your solution by running the tests:
# ruby tests/06_definition_test.rb

class Definition
# Your code here
words = []
def add_word(word, definition)
#add_word(word, definition), should store a word and definition
add_word('ruby', 'A red precious stone')
words << add_word
end
puts words
end



#code example
class Definition

    def initalize 
        @dictionary = {}
    end

    def add_word(word, defintion)
        @dictionary[word] = defintion
    end

    def lookup(word)
        return @dictionary[word]
    end

    def total_words
        returns @dictionary.keys.count
    end
end
