class Stack
  
  def initialize()
    @data = []
  end

  def push(ele)
    @data << ele
    self
  end

  def pop
    @data.pop
  end

  def peek
    @data.first
  end

end

# a = Stack.new
# a.push("hello")
# a.push("world")
# a.push("hey")
# a.peek

class Queue

  def initialize
    @data = []
  end

  def enqueue(ele)
    @data << ele
    self
  end

  def dequeue
    @data.shift
  end

  def peek
    @data.first
  end

end

# b = Queue.new
# b.enqueue("hello")
# b.enqueue("world")
# b.enqueue("hey")
# p b.dequeue
# p b.peek

class Map

  def initialize
    @data = []
  end

  def set(key,value)
    if @data.none? { |pair| pair[0] == key }
    @data << [key,value]
    else
      @data.each do |pair|
        pair[1] = value if pair[0] == key
      end
    end
  end

  def get(key)
    @data.each do |pair|
      return pair if pair[0] == key
    end
    nil
  end

  def delete(key)
    @data.each do |pair|
      @data.delete(pair) if pair[0] == key
    end
  end

  def show
    p @data
  end

end

# a = Map.new
# a.set("k1", "v1")
# a.set("k2", "v2")
# a.set("k3", "v2")
# a.set("k2", "v4")
# a.delete("k2")
# a.show