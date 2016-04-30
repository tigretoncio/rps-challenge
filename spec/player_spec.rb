require 'player'

describe 'Player' do
  subject(:player) { Player.new("Sergio")}
  let(:machine) {Player.new("Computer")}

  context '#name' do
    it('returns the name') do
      expect(player.name).to eq "Sergio"
    end
  end

  context '#choice' do
    it('set value to :rock and reads it ') do
      expect(player.choice = :rock).to eq(:rock)
    end
  end

  context 'convert to number' do
    it('papers is converted to 1') do
      player.choice = "paper"
      expect(player.to_i).to eq Player::CHOICES[:paper]
    end
  end

  context 'computer choice' do
    it('provides a random choice for computer') do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(player.computer_choice("classic")).to eq :scissors
    end
  end

  context '#computer?' do
    it('returns true if player2 is computer') do
      expect(machine.computer?).to be true
    end
  end
end