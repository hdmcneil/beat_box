require './lib/node'
require 'pry'
require 'rspec'

describe 'node' do
  it 'has a node' do
  node = Node.new("plop")
  expect(node).to be_instance_of(Node)
  end

  it 'has a value' do
    node = Node.new("plop")
    node.data
    expect(node.data).to eq("plop")
  end

  it 'does not have another node' do
    node = Node.new("plop")
    node.next_node
    expect(node.next_node).to eq(nil)
  end



end