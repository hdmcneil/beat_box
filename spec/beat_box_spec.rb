require './lib/beat_box'
require './lib/linked_list' 
require './lib/node'
require 'rspec'

describe BeatBox do
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
      # @bb.play
    end

    it 'can validate and add beats' do
      @bb.append("deep")
      @bb.append("Mississippi")
      expect(@bb.all).to eq("deep")
      @bb.prepend("tee tee tee Mississippi")
      expect(@bb.all).to eq("tee tee tee deep")
    end
end
  describe 'Speed_and_Voice' do
    it 'can change the speed' do
      bb = BeatBox.new
      bb.append("deep dop dop deep")
      # bb.play
      expect(bb.rate = 100).to eq(100)
      expect(bb.rate).to eq(100)
      bb.rate = 100
      # @bb.play
    end

    it 'can change voice' do
      bb1 = BeatBox.new 
      bb1.append("deep dop dop deep")
      bb1.prepend("tee tee tee Mississippi")
      bb1.append("woo hoo shu")
      bb1.append("deep doo ditt")
      expect(bb1.to_string).to eq("tee tee tee deep dop dop deep woo hoo shu deep doo ditt")
      bb1.play
      expect(bb1.voice = "Daniel").to eq("Daniel")
      expect(bb1.rate = 100).to eq(100)
      bb1.rate = 100
      bb1.voice = "Cellos"
      bb1.play
      bb1.rate = 50
      bb1.voice = "Trinoids"
      bb1.play
      bb1.rate = 400
      bb1.voice = "Zarvox"
      bb1.play
    end

  end
