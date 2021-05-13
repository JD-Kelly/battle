require 'player'

describe Player do
  subject(:james) { Player.new('James') }
  let(:kim) { Player.new('Kim') }

  describe '#name' do
    it 'returns the name' do
      expect(james.name).to eq 'James'
    end
  end

  describe '#HP' do
    it 'returns players HP' do
      expect(james.hp).to eq 60 
    end
  end
  
  describe '#damage' do 
    it 'reduces HP by 10' do 
      james.damage
      expect(james.hp).to eq 50 
    end
  end
end
