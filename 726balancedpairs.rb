

def balancedPairs(str)

    matches = {
    ")" => "(",
    "}" => "{",
    "]" => "["
}

stack = []

openers = matches.values
closers = matches.keys

str.each_char do |el|
    stack << el if openers.include?(el)
    if closers.include?(el)
        return false if stack.empty?
        return false if stack[-1] != matches[el]
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