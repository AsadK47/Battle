require "player"

describe Player do

  let(:name) { double :name }
  subject(:player_1) { described_class.new("Asad") }
  subject(:player_2) { described_class.new("Chris") }

  describe "#name" do
    it "Returns the users name" do
      expect(player_1.name).to eq "Asad"
    end
  end

  describe "hit_points" do
    it "returns the hit_points" do
      expect(player_1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "attack" do
    it "damages the player" do
      expect(player_2).to receive(:receive_damage)
      player_1.attack(player_2)
    end
  end

  describe "#receive_damage" do
    it "reduces the players hit_points" do
      expect{ player_2.receive_damage }.to change { player_2.hit_points }.by(-10)
    end
  end

end
