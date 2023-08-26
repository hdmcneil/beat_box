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
end
