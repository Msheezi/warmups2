

class Mystack 
    attr_accessor :stack, :min

    def initialize
        @stack = []
        @min = []
    end



def push(value)
    if @min.empty?
        @min << value
        
    elsif value < @min[-1] 
        @min << value
    
    end
    @stack << value
    return

end

def pop
    if @min[-1] == @stack[-1]
        @min.pop
        @stack.pop
    else
        @stack.pop
    end

end

def length
    @stack.length

end

def getMin
    @min[-1]

end


end

testvalues = [8,2,4,5,7,8,2,3]

mystack = Mystack.new

    mystack.push(8) #8
# print mystack.stack 
# puts
# print "----------------"
# puts
    mystack.push(2) # 2
print mystack.stack
puts

# puts mystack.getMin
    mystack.push(4) # 2

print mystack.stack
puts

puts "Current Min: #{mystack.getMin}"
    mystack.push(5) # 2
    mystack.pop
    mystack.push(7) # 2
    mystack.push(1)
puts "Current Min: #{mystack.getMin}"

    mystack.push(8) # 2
    mystack.push(3) # 2
    mystack.push(-1)
print mystack.stack
puts
puts "Current Min: #{mystack.getMin}"



