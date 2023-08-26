require './lib/linked_list'
require './lib/node'
require 'pry'

RSpec.describe LinkedList do
  before :each do
    @list = LinkedList.new
  describe '#initialize' do
  it 'has a new Linked List' do
  expect(list).to be_instance_of(LinkedList)
  end

  it 'has a head' do
    list.head
    expect(list.head).to eq(nil)
  end

  it 'has data value for 1st node' do
    list.append("doop")
    list
    expect(list).to be_instance_of(LinkedList)
  end

  list.head.data
  list.head.next_node

  it 'counts the nodes' do
    list.append("doop")
    expext(list.count).to eq(1)
  end

end
end
end
