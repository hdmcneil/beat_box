require './lib/node'
require 'pry'

RSpec.describe Node do
  describe '#initialize' do
  it 'has a new Node object' do
  node = Node.new("plop")
  expect(node).to be_instance_of(Node)
  end

  it 'has a value' do
    node = Node.new("plop")
    expect(node.data).to eq("plop")
  end

  it 'does not have another node' do
    node = Node.new("plop")
    expect(node.next_node).to eq(nil)
  end

end

end