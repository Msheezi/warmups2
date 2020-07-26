class Stack 

    attr_reader :stack
    def initialize
        @stack =  []
        @min = 0
    end

    def push(value)
        @min = value if value < @min
        @stack << value

    end

    def pop
        @stack.pop
    end


    def getMin
        @min
    end

    def peek
        @stack[-1]
    end

end

myStack = Stack.new

puts myStack.push(9)
print myStack.stack
puts myStack.push(8)
print myStack.stack
puts myStack.pop
puts myStack.push(7)
print myStack.stack
print myStack.getMin
puts myStack.push(6)
print myStack.stack
puts myStack.peek
puts myStack.push(5)
puts myStack.push(4)