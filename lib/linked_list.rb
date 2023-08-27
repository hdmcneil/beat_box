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
    if @head.nil? # if head = nil
      @head = Node.new(value) # the new node is the head
    else
      last_node = @head # last node is the head
      while last_node.next_node # loop until last node = nil
        last_node = last_node.next_node # point to next node
      end
      last_node.next_node = Node.new(value) #next node
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
  
  def to_string
    return '' if @head.nil? #If the list is empty, return an empty string
    node = @head #temp variable that starts head of linked list
    result = "#{node.data}" #Start with the data from the head node
    while node.next_node #initiates while loop as long has 'node' has a next_node
      node = node.next_node #updates node to point to the new node
      result += " #{node.data}" #adds the data from the current 'node' to the 'result ' string sperated by a space
    end
    result
  end

  
    




end