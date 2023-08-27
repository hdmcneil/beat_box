require './lib/linked_list'
require './lib/node'
require 'pry'

RSpec.describe LinkedList do
  before :each do
    @list = LinkedList.new
  end

  describe '#initialize' do
  it 'has a new Linked List' do
  expect(@list).to be_instance_of(LinkedList)
  end

  it 'has a head' do
    @list.head
    expect(@list.head).to eq(nil)
  end


  it 'has data value for 1st node' do
    @list.append("doop")
    @list
    expect(@list).to be_instance_of(LinkedList)
  end

  it 'counts the nodes' do
    @list.append("doop")
    expect(@list.count).to eq(1)
  end

  it 'creates a string of all the nodes' do
    @list.to_string
    @list.append("doop")
    expect(@list.to_string).to eq("doop")
  end
end

  describe 'multiple append function' do
  
  it 'has a list' do
    list = LinkedList.new
   expect(@list).to be_instance_of(LinkedList)
  end

  it 'has head equal to nil' do
    expect(@list.head).to eq(nil)
  end

  it 'has a head equal to "doop"' do
    @list.append("doop")
    expect(@list.head.data).to eq("doop")
  end

  it 'has a list with the node "doop"' do
    @list.append("doop")
    expect(@list).to be_instance_of(LinkedList)
  end

  it 'has a head with value "doop"' do
    @list.append("doop")
    @list.head
    expect(@list.head).to be_instance_of(Node)
  end

  it 'has a head that points to nil' do
    @list.append("doop")
    expect(@list.head.next_node).to eq(nil)
  end

  it 'has appended a node "doop"' do
    @list.append("doop")
    expect(@list.head.data).to eq("doop")
  end

    it 'appended the node "deep"' do
      @list.append("doop")
      @list.append("deep")
      expect(@list).to be_instance_of(LinkedList)
    end

    it 'has a list that includes "deep" & "doop"' do
      @list.append("doop")
      @list.append("deep")
      expect(@list).to be_instance_of(LinkedList)
    end

    # it 'has next node of "deep"' do
    #   @list.append("doop")
    #   @list.append("deep")
      
    #   last = @list.last_node
    #   expect(@list.head.next_node).to eq(last.data)
    # end

    describe 'Iteration 2'
end
end

