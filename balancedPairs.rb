

def balancedPairs(str)

#write a function such that it can tell if characters are balanced i.e. ( ) 
#implement this using a stack, loop through string and compare values
#fail conditions: stack is empty on a close, stack is empty after iterating through all characters on string
#use an object for flow control
#time complexity O(n)

validator = {")"=> "(", "}"=>"{", "]"=> "["}
openers = validator.values
closers = validator.keys
stack = []

str.each_char do |char|
    stack.push(char) if openers.include?(char)
    if closers.include?(char)
        return false if stack.empty?
        return false if stack[-1] != validator[char]
        stack.pop
    end
end
    stack.empty?

end


puts balancedPairs("(") # false
puts balancedPairs("()") # true
puts balancedPairs("(}") # false
puts balancedPairs("(){}[]") #true
puts balancedPairs("({})[]") # true 