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
    

  end


end