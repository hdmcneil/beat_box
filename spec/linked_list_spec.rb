require './lib/linked_list'
require './lib/node'
require 'pry'

RSpec.describe LinkedList do
  describe '#initialize' do
  it 'has a new Linked List' do
  list = LinkedList.new
  expect(list).to be_instance_of(LinkedList)
  end

  it 'has a head' do
    list = LinkedList.new
    list.head
    expect(list.head).to eq(nil)
  end

  

end
end
