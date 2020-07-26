# implement  a stack class with the following methods
# pop, push, getMin, peek

# implement in ruby
# getMin should have constant time

class Stack 
    attr_reader :stack, :min
    
    def initialize
        @stack = []
        @min = []
    end


    def pop
        statement = "min unchanged"
        value = @stack[-1]
        if value == @min[-1]
            newmin = @min.pop
            statement = "new min: #{newmin}"
        end
        logvalue = @stack.pop
        return "popped: #{logvalue}, #{statement}"
    end

    def push(value)
        statement = "min unchanged"
        if @min.empty?
            @min << value
            statement = "new min #{value}" 
        end
        if value < @min[-1]
            @min << value 
            statement = "new min #{value}"
        end
        @stack << value
        return "pushed: #{value}, #{statement}"

    end

    def getMin 

        return "current min: #{@min[-1]}"
    end

    def peek
        @stack[-1]
    end



end


#test cases

testvalues = [8,2,4,5,7,8,2,3]

mystack = Stack.new

puts mystack.push(8) #8
# print mystack.stack 
# puts
# print "----------------"
# puts
puts mystack.push(2) # 2
puts mystack.getMin
puts mystack.push(4) # 2
puts mystack.getMin
puts mystack.push(5) # 2
puts mystack.pop
puts mystack.getMin
puts mystack.push(7) # 2

puts mystack.push(8) # 2
puts mystack.push(3) # 2
puts mystack.push(-1)
 # 2
# print mystack.stack 
# puts
# print "----------------"
# puts
# puts mystack.getMin # 2
# print "----------------"
# puts
mystack.pop # 2

# puts
# print mystack.stack 
# puts
# print "----------------"
# puts
# puts mystack.getMin #8
# mystack.push(4)
# print "----------------"
# puts
# mystack.push(5)
# puts mystack.getMin
# print mystack.stack 
# puts
# mystack.push(6)
# mystack.pop
# mystack.push(2)
# puts mystack.getMin
# print mystack.stack 
# puts
# mystack.push(3)
