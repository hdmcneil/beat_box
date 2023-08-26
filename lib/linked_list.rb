require 'pry'

class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def head
    @head
  end

  def append(value)
    if 
      @head.nil?
      @head = Node.new(value)
    else
      last_node = @head
      while(last_node.next_node.nil? != true)
      end
    end
  end

  def count
    count = 0
    last_node = @head
    until last_node.nil?
      count += 1
      last_node = last_node.next_node
    end
    count
  end
  

end