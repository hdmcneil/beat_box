require './lib/beat_box'
require './lib/linked_list' 
require './lib/node'

RSpec.describe BeatBox do
  before :each do
    @bb = BeatBox.new
  end

  describe '#initialize' do
  it 'has a linked list that is empty' do
    expect(@bb).to be_instance_of(BeatBox)
    expect(@bb.list.head).to eq(nil)
    end
  end

  it 'adds 3 nodes at once' do
    @bb.append("deep doo ditt")
    expect(@bb.list.head.data).to eq("deep")
    expect(@bb.list.head.next_node.data).to eq("doo")
    @bb.append("woo hoo shu")
    expect(@bb.count).to eq(6)
    expect(@bb.to_string).to eq("deep doo ditt woo hoo shu")
  end

    it 'can play the beats' do
      @bb.append("deep doo ditt woo hoo shu")
      expect(@bb.count).to eq(6)
      expect(@bb.list.count).to eq(6)
      @bb.play
    end

    it 'can validate and add beats' do
      @bb.append("deep")
      @bb.append("Mississippi")
      expect(@bb.all).to eq("deep")
      @bb.prepend("tee tee tee Mississippi")
      expect(@bb.all).to eq("tee tee tee deep")
    end

end