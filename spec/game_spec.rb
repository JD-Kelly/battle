require 'game'

describe Game do
  let(:game) { described_class.new(james, kim) }
  let(:kim) { double(:kim) }
  let(:james) { double(:james)}

  describe '#attack' do
    it "attacks player" do
      expect(kim).to receive(:damage)
      game.attack(kim) 
    end
  end
  
  describe 'new' do 
    it 'takes 2 arguments' do 
      expect(Game).to respond_to(:new).with(2).arguments
    end
  end
end
