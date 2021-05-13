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

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq(james)
    end
  end

  describe '#player_2' do
    it 'returns player 2' do
      expect(game.player_2).to eq(kim)
    end
  end
end
