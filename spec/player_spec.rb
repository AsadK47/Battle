require "player"

describe Player do

  describe "#name" do
    let(:name) { double :name }
    subject(:player) { described_class.new(name) }

    it "Returns the users name" do
      expect(player.name).to eq name
    end

  end

end
