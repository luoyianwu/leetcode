class LinkedList
  attr_accessor :head #, :tail, :length

  def initialize(input)
    if input.is_a?(Array)
      initialize_with_array(input)
    else
      @head = Node.new(input)
    end
  end

  def initialize_with_array(input)
    curr = nil
    input.each do |value|
      if @head.nil?
        @head = Node.new(value)
        curr = @head
        next
      end
      curr.next = Node.new(value)
      # curr.next.prev = curr
      curr = curr.next      
    end
  end


  def get(index)
    return nil unless index.is_a? Integer
    curr_node = @head
    index.times do
      curr_node = curr_node.next
      return nil if curr_node.nil?
    end
    return curr_node
  end
end

class Node
  attr_accessor :next, :val #, :prev

  def ==(node)
    # @prev.equal?(node.prev) &&
    @next.equal?(node.next) &&
    @val.equal?(node.val)
  end

  def initialize(input)
    @val = input
  end
end