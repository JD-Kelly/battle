require 'game'

describe Game do
  let(:game) { described_class.new }
  let(:kim) { double(:kim) }

  describe '#attack' do
    it "attacks player" do
      expect(kim).to receive(:damage)
      game.attack(kim) 
    end
  end
end
