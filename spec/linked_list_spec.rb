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


  describe "#append" do
  it 'adds a new node to the list' do
    @list.append("doop")
    expect(@list.head.data).to eq("doop")
    expect(@list.head.next_node).to eq(nil)
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
   expect(@list).to be_instance_of(LinkedList)
  end

  it 'has head equal to nil' do
    expect(@list.head).to eq(nil)
  end

  it 'has a head equal to "doop"' do
    @list.append("doop")
    expect(@list.head.data).to eq("doop")
    expect(@list.head.next_node).to eq(nil)
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
      expect(@list.head.data).to eq("doop")
      expect(@list.head.next_node.data).to eq("deep")
      expect(@list.to_string).to eq("doop deep")
      expect(@list.count).to eq(2)
    end

  
    describe 'prepend & insert' do
      it 'adds a node "plop"' do
        @list = LinkedList.new
        expect(@list).to be_instance_of(LinkedList)
        @list.append("plop")
        expect(@list.head.next_node).to eq(nil)
        expect(@list.head.data).to eq("plop")
        expect(@list.to_string).to eq("plop")
        expect(@list.count).to eq(1)
      end
    end

      it 'has a node named "suu"' do
        expect(@list).to be_instance_of(LinkedList)
        @list.append("plop")
        @list.append("suu")
        expect(@list.head.next_node.data).to eq("suu")
        expect(@list.head.data).to eq("plop")
        expect(@list.to_string).to eq("plop suu")
        expect(@list.count).to eq(2)
    end

    it 'prepend/adds "dop" to beginning' do
      expect(@list).to be_instance_of(LinkedList)
        @list.append("plop")
        @list.append("suu")
        @list.prepend("dop")
        expect(@list.head.next_node.data).to eq("plop")
        expect(@list.head.data).to eq("dop")
        expect(@list.to_string).to eq("dop plop suu")
        expect(@list.count).to eq(3)
    end

    it 'inserts a node in the linked list' do
      expect(@list).to be_instance_of(LinkedList)
        @list.append("plop")
        @list.append("suu")
        @list.prepend("dop")
        @list.insert(1, "woo")
        expect(@list.head.data).to eq("dop")
        expect(@list.to_string).to eq("dop woo plop suu")
        expect(@list.count).to eq(4)
    end

    it 'finds a node in a linked list' do
      expect(@list).to be_instance_of(LinkedList)
      @list.append("woo")
      @list.prepend("deep")
      @list.append("shi")
      @list.append("blop")
      @list.insert(3, "shu")
      @list.to_string
      @list.find(2,1)
      expect(@list.to_string).to eq("deep woo shi shu blop")
      expect(@list.find(2,1)).to eq(["shi"])
      string = @list.find(1,3)
      expect(string.join(' ')).to eq("woo shi shu")
    end

    it 'it includes? value and returns boolean' do
      expect(@list).to be_instance_of(LinkedList)
      @list.append("woo")
      @list.prepend("deep")
      @list.append("shi")
      @list.append("blop")
      @list.insert(3, "shu")
      expect(@list.to_string).to eq("deep woo shi shu blop")
      expect(@list.find(2,1)).to eq(["shi"])
      string = @list.find(1,3)
      expect(string.join(' ')).to eq("woo shi shu")
      expect(@list.includes?("deep")).to be(true)
      expect(@list.includes?("dep")).to be(false)
    end


end
end
end
