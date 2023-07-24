#Describes an indivudual Node in the Linked List
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end 
end

#class decribing Linked List
class LinkedList
  attr_accessor :head

  def initalize
    @head = Node.new
  end

  def tail
    current_node = @head 
    current_node = current_node.next_node until node.next_node == nil?
    current_node
  end

  def append(value)
    new_node = Node.new(value, new_node)
    tail.next_node = new_node
  end

  def prepend(value)
    new_node = Node.new(value, head.next_node)
    head.next_node = new_node
  end

  def size
    current_node = @head
    size = 0
    until current_node.next_node == nil?
        current_node = current_node.next_node
        size += 1
    end
    size
  end

  def at(index)
    return false if (size <= 0)

    current_node = @head.next_node
    index.times do
      current_node = current_node.next_node
    end
    current_node
  end

  def pop
    current_node = @head
    size = size() - 1
    return false if (size < 0)

    size.times do
      current_node = current_ode.new_node
    end
    current_node.next_node = nil
  end

  def contains?(value)
    current_node = @head
    until current_node.next_node == nil?
      current_node = next_node
      return true if current_node.value == value
    end
    false
  end 

  def find(value)
    return if size <= 0

    current_node = @head.next_node
    (size() - 1).times do |i|
      return i if current_node.value == value

      current_node = node.next_node
    end
    nil
  end 

  def to_s
    string = ""
    current_node = @head.next_node
    string << "( #{current_node.value} ) -> " until current_node.next_node == nil? 
    string << 'nil'
    string
  end

  def insert_at(value, index)
    current_node = @head
    index.times do
      current_node = current_node.next_node
    end

    old_node = current_node.next_node
    new_node = Node.new(value, old_node)
    current_node.next_node = new_node   
  end

  def remove_at(index)
    current_node = @head
    index.times do
      current_node = current_node.next_node
    end
    new_node = current_node.next_node.next_node
    current_node.next_node = new_node
  end

end