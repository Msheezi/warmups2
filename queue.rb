# define a queue class with the follwoing methods. enq, deq, length, front



class Queue

    def initialize
        @queue = []
    end

    def enq(value)
        @queue << value
        statement = "Enqueued #{value}"

    end

    def deq
        value = @queue.shift
        statement = "Dequeued #{value}"
    end

    def length
        return "Queue Length: #{@queue.length}"
    end

    def front 
        return "#{@queue[0]} is at the front of the queue"
    end 

    def q 
        return "current queue: #{@queue}"
    end
end


q = Queue.new
puts q.enq(9)
puts q.enq(910)
puts q.q 
puts q.length
puts q.deq
puts q.length
puts q.enq(5)
puts q.q 
puts q.length
puts q.enq(8)