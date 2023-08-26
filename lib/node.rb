class Node
  attr_accessor :data

  def initialize(data)
    @data = data
    @next = nil
  end

  def next_node
    @next
  end
end

