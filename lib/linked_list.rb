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

  def prepend(value) # add nodes to the beginning of the list
  new_node = Node.new(value)
    if @head.nil? #if head is nil (empty) 
      @head = new_node #the new node becomes the head
    else
      new_node.next_node = @head #else set the next_node of the new node to be the head
      @head = new_node # update the head to the new node
    end
  end

  def find(index_position, num_elements_return)
    return nil if index_position < 0 || num_elements_return <= 0
    
    node = node_at(index_position)
    return nil if node.nil? # return nil if there aren't any nodes
  
    elements = [] #create an array to hold elements returned
    num_elements_return.times do #iterate through linked list
      break if node.nil?  #until reaches nil
      elements << node.data # move node data into elements array
      node = node.next_node #update node so that we can traverse list
    end
  
    elements # return the elements
  end

  def includes?(value)
    if
      @head.nil?
      false  # if linked list empty return false
    else
      node = @head # start at head
      while node #iterate 
        if (node.data == value)
         return true # if value found exit loop and return true
        end
        node = node.next_node #move to the next node
      end
      false # if value not found return false
    end
  end

  def insert(index, node_data)
    new_node = Node.new(node_data)

    if index == 0
      new_node.next_node = @head # set as head and adjust pointers
      @head = new_node #update head to new node
    else
      previous_node = node_at(index -1) #locate node node before index
      new_node.next_node = previous_node.next_node #adjust pointer so that new nodode is pointing at node that previously was in dex position
      previous_node.next_node = new_node # adjust pointer for node before index point to new node
    end
  end

  private 
  def node_at(index)
    return nil if index < 0 #return nil if negative

    node = @head #start at head
    index.times do #iterate through linked list 'index' times to arrive at correct index
      return nil if node.nil?
      node = node.next_node #move to the next node in list
    end
    node
  end

end